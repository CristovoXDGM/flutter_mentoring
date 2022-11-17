// ignore_for_file: unused_element

import 'package:bloc/bloc.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/domain/result/pet_counter_result.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/domain/usecases/pet_counter_usecase.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/presenter/bloc/counter_bloc_events.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/presenter/bloc/counter_bloc_states.dart';

abstract class ICounterBloc extends Bloc<CounterBlocEvents, CounterBLocState> {
  ICounterBloc(super.initialState);

  Future<void> _incrementCounter(IncrementCounterEventBloc event, Emitter emit);
  Future<void> _decrementCounter(DecrementCounterEventBloc event, Emitter emit);
}

class CounterBloc extends ICounterBloc {
  int count = 0;

  final PetCounterUseCase usecase;

  CounterBloc(this.usecase) : super(InitialCounterBlocState()) {
    on<IncrementCounterEventBloc>(_incrementCounter);
    on<DecrementCounterEventBloc>(_decrementCounter);
  }

  @override
  Future<void> _incrementCounter(IncrementCounterEventBloc event, Emitter emit) async {
    final result = await usecase.countPetWithName();

    if (result is PetCounterResponse) {
      count = result.counter;
      emit(SuccessCounterBlocState(count));
    }
  }

  @override
  Future<void> _decrementCounter(DecrementCounterEventBloc event, Emitter emit) async {
    count--;
    emit(SuccessCounterBlocState(count));
  }
}
