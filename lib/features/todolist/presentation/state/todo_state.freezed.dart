// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ToDoState {
  List<Item> get itemList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ToDoStateCopyWith<ToDoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoStateCopyWith<$Res> {
  factory $ToDoStateCopyWith(ToDoState value, $Res Function(ToDoState) then) =
      _$ToDoStateCopyWithImpl<$Res, ToDoState>;
  @useResult
  $Res call({List<Item> itemList});
}

/// @nodoc
class _$ToDoStateCopyWithImpl<$Res, $Val extends ToDoState>
    implements $ToDoStateCopyWith<$Res> {
  _$ToDoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemList = null,
  }) {
    return _then(_value.copyWith(
      itemList: null == itemList
          ? _value.itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ToDoStateCopyWith<$Res> implements $ToDoStateCopyWith<$Res> {
  factory _$$_ToDoStateCopyWith(
          _$_ToDoState value, $Res Function(_$_ToDoState) then) =
      __$$_ToDoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Item> itemList});
}

/// @nodoc
class __$$_ToDoStateCopyWithImpl<$Res>
    extends _$ToDoStateCopyWithImpl<$Res, _$_ToDoState>
    implements _$$_ToDoStateCopyWith<$Res> {
  __$$_ToDoStateCopyWithImpl(
      _$_ToDoState _value, $Res Function(_$_ToDoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemList = null,
  }) {
    return _then(_$_ToDoState(
      itemList: null == itemList
          ? _value._itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc

class _$_ToDoState implements _ToDoState {
  _$_ToDoState({final List<Item> itemList = const []}) : _itemList = itemList;

  final List<Item> _itemList;
  @override
  @JsonKey()
  List<Item> get itemList {
    if (_itemList is EqualUnmodifiableListView) return _itemList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemList);
  }

  @override
  String toString() {
    return 'ToDoState(itemList: $itemList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToDoState &&
            const DeepCollectionEquality().equals(other._itemList, _itemList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_itemList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ToDoStateCopyWith<_$_ToDoState> get copyWith =>
      __$$_ToDoStateCopyWithImpl<_$_ToDoState>(this, _$identity);
}

abstract class _ToDoState implements ToDoState {
  factory _ToDoState({final List<Item> itemList}) = _$_ToDoState;

  @override
  List<Item> get itemList;
  @override
  @JsonKey(ignore: true)
  _$$_ToDoStateCopyWith<_$_ToDoState> get copyWith =>
      throw _privateConstructorUsedError;
}
