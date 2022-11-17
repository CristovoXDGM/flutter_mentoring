abstract class CounterBLocState {}

class InitialCounterBlocState extends CounterBLocState {}

class SuccessCounterBlocState extends CounterBLocState {
  final int count;

  SuccessCounterBlocState(this.count);
}

class ErrorCounterBlocState extends CounterBLocState {
  final String message;

  ErrorCounterBlocState({this.message = 'Não foi possivel contabilizar'});
}
