import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentoring_app_totvs/app/pages/bloc/counter_bloc.dart';
import 'package:mentoring_app_totvs/app/pages/bloc/counter_bloc_events.dart';
import 'package:mentoring_app_totvs/app/pages/bloc/counter_bloc_states.dart';
import 'package:mentoring_app_totvs/app/pages/cubit/counter_cubit.dart';
import 'package:mentoring_app_totvs/app/pages/cubit/counter_cubit_state.dart';

import 'package:mentoring_app_totvs/app/widgets/custom_pet_shop_scaffold.dart';

import 'package:provider/provider.dart';

enum Petsbreed { golden, rottwaire, viralata }

class PetFormPage extends StatefulWidget {
  const PetFormPage({super.key});

  @override
  State<PetFormPage> createState() => _PetFormPageState();
}

class _PetFormPageState extends State<PetFormPage> {
  final _firstNameTextController = TextEditingController();

  Petsbreed? petsbreed = Petsbreed.golden;

  late CounterBloc counterBloc;

  @override
  void initState() {
    super.initState();
    counterBloc = BlocProvider.of<CounterBloc>(context);
  }

  @override
  void dispose() {
    super.dispose();
    _firstNameTextController.dispose();
    counterBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPetShopScaffold(
        bodyScaffold: DefaultTextStyle(
      style: Theme.of(context).textTheme.headline2!,
      textAlign: TextAlign.center,
      child: Container(
        alignment: FractionalOffset.center,
        color: Colors.white,
        child: Column(
          children: [
            BlocBuilder<CounterBloc, CounterBLocState>(
              bloc: counterBloc,
              builder: (context, state) {
                if (state is SuccessCounterBlocState) {
                  return Text('valor ${state.count}');
                }
                if (state is ErrorCounterBlocState) {
                  return Text('Error ${state.message}');
                }

                return const Text('Sem att');
              },
            ),
            TextButton(
              onPressed: () => counterBloc.add(IncrementCounterEventBloc()),
              child: const Text('Increment'),
            ),
            TextButton(
              onPressed: () => counterBloc.add(DecrementCounterEventBloc()),
              child: const Text('decrement'),
            )
          ],
        ),
      ),
    ));
  }
}
