// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GameState {

 List<PictMatchingModel> get pictMatchingList; int get successCount; int get selectNum;
/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameStateCopyWith<GameState> get copyWith => _$GameStateCopyWithImpl<GameState>(this as GameState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameState&&const DeepCollectionEquality().equals(other.pictMatchingList, pictMatchingList)&&(identical(other.successCount, successCount) || other.successCount == successCount)&&(identical(other.selectNum, selectNum) || other.selectNum == selectNum));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(pictMatchingList),successCount,selectNum);

@override
String toString() {
  return 'GameState(pictMatchingList: $pictMatchingList, successCount: $successCount, selectNum: $selectNum)';
}


}

/// @nodoc
abstract mixin class $GameStateCopyWith<$Res>  {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) _then) = _$GameStateCopyWithImpl;
@useResult
$Res call({
 List<PictMatchingModel> pictMatchingList, int successCount, int selectNum
});




}
/// @nodoc
class _$GameStateCopyWithImpl<$Res>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._self, this._then);

  final GameState _self;
  final $Res Function(GameState) _then;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pictMatchingList = null,Object? successCount = null,Object? selectNum = null,}) {
  return _then(_self.copyWith(
pictMatchingList: null == pictMatchingList ? _self.pictMatchingList : pictMatchingList // ignore: cast_nullable_to_non_nullable
as List<PictMatchingModel>,successCount: null == successCount ? _self.successCount : successCount // ignore: cast_nullable_to_non_nullable
as int,selectNum: null == selectNum ? _self.selectNum : selectNum // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GameState].
extension GameStatePatterns on GameState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameState value)  $default,){
final _that = this;
switch (_that) {
case _GameState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameState value)?  $default,){
final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PictMatchingModel> pictMatchingList,  int successCount,  int selectNum)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that.pictMatchingList,_that.successCount,_that.selectNum);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PictMatchingModel> pictMatchingList,  int successCount,  int selectNum)  $default,) {final _that = this;
switch (_that) {
case _GameState():
return $default(_that.pictMatchingList,_that.successCount,_that.selectNum);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PictMatchingModel> pictMatchingList,  int successCount,  int selectNum)?  $default,) {final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that.pictMatchingList,_that.successCount,_that.selectNum);case _:
  return null;

}
}

}

/// @nodoc


class _GameState implements GameState {
  const _GameState({required final  List<PictMatchingModel> pictMatchingList, this.successCount = 0, this.selectNum = 0}): _pictMatchingList = pictMatchingList;
  

 final  List<PictMatchingModel> _pictMatchingList;
@override List<PictMatchingModel> get pictMatchingList {
  if (_pictMatchingList is EqualUnmodifiableListView) return _pictMatchingList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pictMatchingList);
}

@override@JsonKey() final  int successCount;
@override@JsonKey() final  int selectNum;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameStateCopyWith<_GameState> get copyWith => __$GameStateCopyWithImpl<_GameState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameState&&const DeepCollectionEquality().equals(other._pictMatchingList, _pictMatchingList)&&(identical(other.successCount, successCount) || other.successCount == successCount)&&(identical(other.selectNum, selectNum) || other.selectNum == selectNum));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_pictMatchingList),successCount,selectNum);

@override
String toString() {
  return 'GameState(pictMatchingList: $pictMatchingList, successCount: $successCount, selectNum: $selectNum)';
}


}

/// @nodoc
abstract mixin class _$GameStateCopyWith<$Res> implements $GameStateCopyWith<$Res> {
  factory _$GameStateCopyWith(_GameState value, $Res Function(_GameState) _then) = __$GameStateCopyWithImpl;
@override @useResult
$Res call({
 List<PictMatchingModel> pictMatchingList, int successCount, int selectNum
});




}
/// @nodoc
class __$GameStateCopyWithImpl<$Res>
    implements _$GameStateCopyWith<$Res> {
  __$GameStateCopyWithImpl(this._self, this._then);

  final _GameState _self;
  final $Res Function(_GameState) _then;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pictMatchingList = null,Object? successCount = null,Object? selectNum = null,}) {
  return _then(_GameState(
pictMatchingList: null == pictMatchingList ? _self._pictMatchingList : pictMatchingList // ignore: cast_nullable_to_non_nullable
as List<PictMatchingModel>,successCount: null == successCount ? _self.successCount : successCount // ignore: cast_nullable_to_non_nullable
as int,selectNum: null == selectNum ? _self.selectNum : selectNum // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$PictMatchingModel {

// 絵合わせの画像情報
 PictEnum get pictEnum;// 1枚目でカードをめくっいるかどうか
 bool get isFront;// カードが揃っているかどうか
 bool get isSuccess;
/// Create a copy of PictMatchingModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PictMatchingModelCopyWith<PictMatchingModel> get copyWith => _$PictMatchingModelCopyWithImpl<PictMatchingModel>(this as PictMatchingModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PictMatchingModel&&(identical(other.pictEnum, pictEnum) || other.pictEnum == pictEnum)&&(identical(other.isFront, isFront) || other.isFront == isFront)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,pictEnum,isFront,isSuccess);

@override
String toString() {
  return 'PictMatchingModel(pictEnum: $pictEnum, isFront: $isFront, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class $PictMatchingModelCopyWith<$Res>  {
  factory $PictMatchingModelCopyWith(PictMatchingModel value, $Res Function(PictMatchingModel) _then) = _$PictMatchingModelCopyWithImpl;
@useResult
$Res call({
 PictEnum pictEnum, bool isFront, bool isSuccess
});




}
/// @nodoc
class _$PictMatchingModelCopyWithImpl<$Res>
    implements $PictMatchingModelCopyWith<$Res> {
  _$PictMatchingModelCopyWithImpl(this._self, this._then);

  final PictMatchingModel _self;
  final $Res Function(PictMatchingModel) _then;

/// Create a copy of PictMatchingModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pictEnum = null,Object? isFront = null,Object? isSuccess = null,}) {
  return _then(_self.copyWith(
pictEnum: null == pictEnum ? _self.pictEnum : pictEnum // ignore: cast_nullable_to_non_nullable
as PictEnum,isFront: null == isFront ? _self.isFront : isFront // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PictMatchingModel].
extension PictMatchingModelPatterns on PictMatchingModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PictMatchingModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PictMatchingModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PictMatchingModel value)  $default,){
final _that = this;
switch (_that) {
case _PictMatchingModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PictMatchingModel value)?  $default,){
final _that = this;
switch (_that) {
case _PictMatchingModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PictEnum pictEnum,  bool isFront,  bool isSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PictMatchingModel() when $default != null:
return $default(_that.pictEnum,_that.isFront,_that.isSuccess);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PictEnum pictEnum,  bool isFront,  bool isSuccess)  $default,) {final _that = this;
switch (_that) {
case _PictMatchingModel():
return $default(_that.pictEnum,_that.isFront,_that.isSuccess);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PictEnum pictEnum,  bool isFront,  bool isSuccess)?  $default,) {final _that = this;
switch (_that) {
case _PictMatchingModel() when $default != null:
return $default(_that.pictEnum,_that.isFront,_that.isSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _PictMatchingModel implements PictMatchingModel {
  const _PictMatchingModel({required this.pictEnum, this.isFront = false, this.isSuccess = false});
  

// 絵合わせの画像情報
@override final  PictEnum pictEnum;
// 1枚目でカードをめくっいるかどうか
@override@JsonKey() final  bool isFront;
// カードが揃っているかどうか
@override@JsonKey() final  bool isSuccess;

/// Create a copy of PictMatchingModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PictMatchingModelCopyWith<_PictMatchingModel> get copyWith => __$PictMatchingModelCopyWithImpl<_PictMatchingModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PictMatchingModel&&(identical(other.pictEnum, pictEnum) || other.pictEnum == pictEnum)&&(identical(other.isFront, isFront) || other.isFront == isFront)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,pictEnum,isFront,isSuccess);

@override
String toString() {
  return 'PictMatchingModel(pictEnum: $pictEnum, isFront: $isFront, isSuccess: $isSuccess)';
}


}

/// @nodoc
abstract mixin class _$PictMatchingModelCopyWith<$Res> implements $PictMatchingModelCopyWith<$Res> {
  factory _$PictMatchingModelCopyWith(_PictMatchingModel value, $Res Function(_PictMatchingModel) _then) = __$PictMatchingModelCopyWithImpl;
@override @useResult
$Res call({
 PictEnum pictEnum, bool isFront, bool isSuccess
});




}
/// @nodoc
class __$PictMatchingModelCopyWithImpl<$Res>
    implements _$PictMatchingModelCopyWith<$Res> {
  __$PictMatchingModelCopyWithImpl(this._self, this._then);

  final _PictMatchingModel _self;
  final $Res Function(_PictMatchingModel) _then;

/// Create a copy of PictMatchingModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pictEnum = null,Object? isFront = null,Object? isSuccess = null,}) {
  return _then(_PictMatchingModel(
pictEnum: null == pictEnum ? _self.pictEnum : pictEnum // ignore: cast_nullable_to_non_nullable
as PictEnum,isFront: null == isFront ? _self.isFront : isFront // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
