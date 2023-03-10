import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../domain/item.dart';


class TodoNotifier extends StateNotifier<Item>{
  TodoNotifier(): super(Item.initial());
  void changeIsDone(bool val){
    state = state.copyWith(isDone: val);
  }
}

final todoProvider = StateNotifierProvider.autoDispose<TodoNotifier, Item>((ref){
  return TodoNotifier();
});

