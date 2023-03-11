import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_todoapp/features/todolist/presentation/state/todo_state.dart';
import 'dart:math';
import '../../domain/item.dart';

part 'todo_controller.g.dart';

@riverpod
class ToDoController extends _$ToDoController {
  @override
  ToDoState build() {
    return ToDoState();
  }

  TextEditingController get controller => TextEditingController(text: "");

  void addItem(Item item) {
    List<Item> perviousItems = [...state.itemList];
    final resultList = perviousItems
      ..add(item.copyWith(id: Random().nextInt(1000)));
    state = state.copyWith(itemList: resultList);
  }

  void updateItem(Item itemToUpdate) {
    final updatedList = state.itemList.map((item) {
      if (item.id == itemToUpdate.id) {
        return itemToUpdate.copyWith(isDone: itemToUpdate.isDone);
      } else {
        return item;
      }
    }).toList();
    state = state.copyWith(itemList: updatedList);
  }

  void deleteItem(Item item) {
    final updatedList = state.itemList.where((i) => i.id != item.id).toList();
    state = state.copyWith(itemList: updatedList);
  }
}
