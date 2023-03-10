import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_todoapp/features/todolist/domain/item.dart';
part 'todo_state.freezed.dart';
@freezed
class ToDoState with _$ToDoState{
  factory ToDoState({
    @Default([]) List<Item> itemList,
  }) = _ToDoState;
}