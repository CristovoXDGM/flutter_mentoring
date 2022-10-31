import 'package:bloc/bloc.dart';
import 'package:mentoring_app_totvs/app/pages/cubit/counter_cubit_state.dart';

class CounterCubit extends Cubit<CounterCubitState> {
  CounterCubit() : super(InitialCounterCubitState());

  int count = 0;

  void incrementCount() {
    count++;
    emit(SuccessCounterCubitState(count));
  }

  void decrementCount() {
    count--;
    emit(SuccessCounterCubitState(count));
  }
}
