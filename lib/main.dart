import 'package:flutter/material.dart';
import 'package:mentoring_app_totvs/app/pages/bloc/counter_bloc.dart';
import 'package:mentoring_app_totvs/app/pages/cubit/counter_cubit.dart';
import 'package:mentoring_app_totvs/app/pages/pet_form_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => CounterCubit()),
        Provider(create: (context) => CounterBloc()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          inputDecorationTheme: const InputDecorationTheme().copyWith(
            fillColor: Colors.amber,
            focusColor: Colors.blue,
          ),
        ),
        home: const PetFormPage(),
      ),
    );
  }
}
