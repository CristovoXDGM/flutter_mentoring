import 'package:bloc/bloc.dart';
import 'package:mentoring_app_totvs/app/pages/bloc/counter_bloc_events.dart';
import 'package:mentoring_app_totvs/app/pages/bloc/counter_bloc_states.dart';

class CounterBloc extends Bloc<CounterBlocEvents, CounterBLocState> {
  int count = 0;

  CounterBloc() : super(InitialCounterBlocState()) {
    on<IncrementCounterEventBloc>(_incrementCounter);
    on<DecrementCounterEventBloc>(_decrementCounter);
  }

  void _incrementCounter(IncrementCounterEventBloc event, Emitter emit) {
    count++;
    emit(SuccessCounterBlocState(count));
  }

  void _decrementCounter(DecrementCounterEventBloc event, Emitter emit) {
    count--;
    emit(SuccessCounterBlocState(count));
  }
}
