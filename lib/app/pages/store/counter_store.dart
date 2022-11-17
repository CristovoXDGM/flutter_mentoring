import 'package:flutter/material.dart';
import 'package:mentoring_app_totvs/app/pages/store/counter_store_state.dart';

class CounterStore extends ValueNotifier<CounterState> {
  CounterStore() : super(InitialCounterState());

  int counter = 0;

  void incrementCount() async {
    value = LoadingCounterState();
    await Future.delayed(const Duration(seconds: 2));
    counter++;
    value = SuccesCounterState(count: counter);
  }
}
