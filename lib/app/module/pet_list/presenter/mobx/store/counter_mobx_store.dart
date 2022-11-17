import 'package:mobx/mobx.dart';

part 'counter_mobx_store.g.dart';

class CounterMobxStore = CounterMobxStoreBase with _$CounterMobxStore;

abstract class CounterMobxStoreBase with Store {
  @observable
  int counter = 0;

  @action
  void increment() {
    counter++;
  }

  @action
  void decrement() {
    counter--;
  }
}



// class CounterMobxStore {
//   CounterMobxStore() {
//     increment = Action(_increment);
//   }

//   final _value = Observable(0);
//   int get value => _value.value;

//   set value(int newValue) => _value.value = newValue;
//   late Action increment;

//   void _increment() {
//     _value.value++;
//   }
// }