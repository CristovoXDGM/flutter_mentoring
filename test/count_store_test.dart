import 'package:flutter_test/flutter_test.dart';
import 'package:mentoring_app_totvs/app/pages/store/counter_store.dart';
import 'package:mentoring_app_totvs/app/pages/store/counter_store_state.dart';

void main() {
  const compareSuccessMessage = 'Valor atualizado com sucesso';
  late CounterStore counterStore;

  setUp(() {
    counterStore = CounterStore();
  });

  group('Counter group test', () {
    test('Testing counter to see value is 1', () async {
      counterStore.incrementCount();

      expect(counterStore.value, isA<LoadingCounterState>());

      await Future.delayed(const Duration(seconds: 3));

      expect(counterStore.counter, 1);
      expect(counterStore.value, isA<SuccesCounterState>());
      expect((counterStore.value as SuccesCounterState).message.toLowerCase(),
          compareSuccessMessage.toLowerCase());
    });
    test('Error test counter to see value is 0', () async {
      counterStore.incrementCount();

      await Future.delayed(const Duration(seconds: 1));

      expect(counterStore.counter, 0);
      expect(counterStore.value, isA<LoadingCounterState>());
    });
  });
}
