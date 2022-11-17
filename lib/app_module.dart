import 'package:flutter_modular/flutter_modular.dart';
import 'package:mentoring_app_totvs/app/core/constants/routes.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/presenter/bloc/counter_bloc.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/pet_form_page.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/pet_list_module.dart';
import 'package:mentoring_app_totvs/app/pages/cubit/counter_cubit.dart';
import 'package:mentoring_app_totvs/app/pages/home_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind<ICounterCubit>(
          (i) => CounterCubit(),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          AppRoutes.rootRout,
          child: (context, args) => const MyHomePage(),
          maintainState: false,
          transition: TransitionType.rightToLeft,
        ),
        ModuleRoute(
          AppRoutes.petFormPage,
          module: PetListModule(),
        )
      ];
}
