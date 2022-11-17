import 'package:bloc/bloc.dart';
import 'package:mentoring_app_totvs/app/pages/cubit/counter_cubit_state.dart';

abstract class ICounterCubit extends Cubit<CounterCubitState> {
  ICounterCubit(super.initialState);

  Future<void> increincrementCount();

  Future<void> decrementCount();
}

class CounterCubit extends ICounterCubit {
  CounterCubit() : super(InitialCounterCubitState());

  int count = 0;

  @override
  Future<void> increincrementCount() async {
    count++;
    emit(SuccessCounterCubitState(count));
  }

  @override
  Future<void> decrementCount() async {
    count--;
    emit(SuccessCounterCubitState(count));
  }
}
