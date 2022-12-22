import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_management/state_notifier/counter_model.dart';
final counterStateProvider = StateNotifierProvider<CounterManager,CounterModel>((ref) {
  return CounterManager();
  
},);
class CounterManager extends StateNotifier<CounterModel> {
  CounterManager() : super(CounterModel(0));

  void increase() {
    var currentValue = state.counter;
    state = CounterModel(currentValue + 1);
  }

  void decrease() {
    var currentValue = state.counter;
    state = CounterModel(currentValue - 1);
  }
}
