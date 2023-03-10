import 'dart:math';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'item.freezed.dart';
@freezed
class Item with _$Item{
  factory Item({
    @Default('') String? name,
    @Default(0) int? id,
    @Default(false) bool? isDone,
}) = _Item;
  factory Item.initial(){
    return Item(
      name: "",
      id: null,
      isDone: false,
    );
  }
}