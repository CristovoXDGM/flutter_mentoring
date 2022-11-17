import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mentoring_app_totvs/app/components/custom_card_widget.dart';
import 'package:mentoring_app_totvs/app/pages/cubit/counter_cubit.dart';
import 'package:mentoring_app_totvs/app/pages/cubit/counter_cubit_state.dart';
import 'package:mentoring_app_totvs/app/widgets/custom_pet_shop_scaffold.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final ICounterCubit counterCubit;

  @override
  void initState() {
    super.initState();
    counterCubit = Modular.get<ICounterCubit>();
  }

  @override
  void dispose() {
    super.dispose();
    counterCubit.close();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPetShopScaffold(
      bodyScaffold: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          // const CustomCardWidget(),
          BlocBuilder(
            bloc: counterCubit,
            builder: (context, state) {
              if (state is SuccessCounterCubitState) {
                if (state.count > 0) {
                  return Text('Teste ${state.count} positivo');
                }
                if (state.count < 0) {
                  return Text('Teste ${state.count} negativo');
                }
              }
              return const Text('Contagem não iniciada');
            },
          ),
          ElevatedButton(
            onPressed: () => counterCubit.increincrementCount(),
            child: const Text('Teste '),
          ),
          ElevatedButton(
            onPressed: () => counterCubit.decrementCount(),
            child: const Text('Teste 2'),
          ),
        ],
      ),
    );
  }
}
