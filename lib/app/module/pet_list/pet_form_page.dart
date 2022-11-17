import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/presenter/bloc/counter_bloc.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/presenter/mobx/store/counter_mobx_store.dart';
import 'package:mentoring_app_totvs/app/widgets/custom_pet_shop_scaffold.dart';

enum Petsbreed { golden, rottwaire, viralata }

class PetFormPage extends StatefulWidget {
  const PetFormPage(this.counterBloc, {super.key});

  final ICounterBloc counterBloc;

  @override
  State<PetFormPage> createState() => _PetFormPageState();
}

class _PetFormPageState extends State<PetFormPage> {
  final _firstNameTextController = TextEditingController();
  final counter = CounterMobxStore();
  @override
  void dispose() {
    super.dispose();
    _firstNameTextController.dispose();
    // widget.counterBloc.close();
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
            // BlocBuilder<ICounterBloc, CounterBLocState>(
            //   bloc: widget.counterBloc,
            //   builder: (context, state) {
            //     if (state is SuccessCounterBlocState) {
            //       return Text('valor ${state.count}');
            //     }
            //     if (state is ErrorCounterBlocState) {
            //       return Text('Error ${state.message}');
            //     }

            //     return const Text('Sem att');
            //   },
            // ),

            Observer(
              builder: (context) {
                return Text('Valor ${counter.counter}');
              },
            ),
            TextButton(
              onPressed: counter.increment,
              child: const Text('Increment'),
            ),
            // TextButton(
            //   onPressed: () => widget.counterBloc.add(DecrementCounterEventBloc()),
            //   child: const Text('decrement'),
            // )
          ],
        ),
      ),
    ));
  }
}
