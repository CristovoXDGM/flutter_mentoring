import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/presenter/bloc/counter_bloc.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/presenter/bloc/counter_bloc_events.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/presenter/bloc/counter_bloc_states.dart';

void main() {
  late CounterBloc counterBloc;

  setUp(() {
    counterBloc = CounterBloc();
  });

  group('Counter Bloc test', () {
    blocTest(
      'Counter bloc tesst',
      build: () => counterBloc,
      act: (bloc) => bloc.add(
        IncrementCounterEventBloc(),
      ),
      expect: () => [isA<SuccessCounterBlocState>()],
    );
  });
}
