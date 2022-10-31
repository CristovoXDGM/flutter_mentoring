abstract class CounterCubitState {}

class InitialCounterCubitState extends CounterCubitState {}

class SuccessCounterCubitState extends CounterCubitState {
  final int count;

  SuccessCounterCubitState(this.count);
}

class ErrorCounterCubitState extends CounterCubitState {
  final String message;

  ErrorCounterCubitState({this.message = 'Não foi possivel contabilizar'});
}
