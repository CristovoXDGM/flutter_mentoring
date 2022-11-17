import 'package:flutter_modular/flutter_modular.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/presenter/bloc/counter_bloc.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/pet_form_page.dart';

class PetListModule extends Module {
  @override
  List<Bind> get binds => [
        Bind<CounterBloc>(
          (i) => CounterBloc(i()),
          onDispose: (value) => value.close(),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => PetFormPage(
            Modular.get<CounterBloc>(),
          ),
          maintainState: false,
          transition: TransitionType.rightToLeft,
        ),
      ];
}
