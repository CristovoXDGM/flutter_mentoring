abstract class CounterState {}

class LoadingCounterState extends CounterState {}

class InitialCounterState extends CounterState {}

class SuccesCounterState extends CounterState {
  final String message;
  final int count;
  SuccesCounterState({this.count = 0, this.message = 'Valor atualizado com sucesso'});
}

class ErrorCounterState extends CounterState {}
