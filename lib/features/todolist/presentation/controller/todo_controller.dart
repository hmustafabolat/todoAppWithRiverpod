import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_todoapp/features/todolist/presentation/state/todo_state.dart';
import 'dart:math';
import '../../domain/item.dart';
part 'todo_controller.g.dart';
@riverpod

class ToDoController extends _$ToDoController{
 @override
ToDoState build(){
  return ToDoState();
 }
 TextEditingController get controller => TextEditingController(text: "");

 void addItem(Item item) {
  List<Item> perviousItems=[...state.itemList];
  final resultList= perviousItems..add(item.copyWith(id: Random().nextInt(1000) ));
  state = state.copyWith(itemList:resultList);
 }

 void updateItem(){
  state=state.copyWith(itemList: state.itemList..first.copyWith(isDone:true)
  );
 }

 void deleteItem(Item item) {
  List<Item> perviousItems=[...state.itemList];
  perviousItems.remove(item);
  state = state.copyWith(itemList:perviousItems);
 }
}