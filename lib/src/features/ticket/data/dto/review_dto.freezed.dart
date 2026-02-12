// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReviewDto {

 int get rating; List<String> get review; String get suggestion;
/// Create a copy of ReviewDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewDtoCopyWith<ReviewDto> get copyWith => _$ReviewDtoCopyWithImpl<ReviewDto>(this as ReviewDto, _$identity);

  /// Serializes this ReviewDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewDto&&(identical(other.rating, rating) || other.rating == rating)&&const DeepCollectionEquality().equals(other.review, review)&&(identical(other.suggestion, suggestion) || other.suggestion == suggestion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rating,const DeepCollectionEquality().hash(review),suggestion);

@override
String toString() {
  return 'ReviewDto(rating: $rating, review: $review, suggestion: $suggestion)';
}


}

/// @nodoc
abstract mixin class $ReviewDtoCopyWith<$Res>  {
  factory $ReviewDtoCopyWith(ReviewDto value, $Res Function(ReviewDto) _then) = _$ReviewDtoCopyWithImpl;
@useResult
$Res call({
 int rating, List<String> review, String suggestion
});




}
/// @nodoc
class _$ReviewDtoCopyWithImpl<$Res>
    implements $ReviewDtoCopyWith<$Res> {
  _$ReviewDtoCopyWithImpl(this._self, this._then);

  final ReviewDto _self;
  final $Res Function(ReviewDto) _then;

/// Create a copy of ReviewDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rating = null,Object? review = null,Object? suggestion = null,}) {
  return _then(_self.copyWith(
rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,review: null == review ? _self.review : review // ignore: cast_nullable_to_non_nullable
as List<String>,suggestion: null == suggestion ? _self.suggestion : suggestion // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ReviewDto extends ReviewDto {
  const _ReviewDto({required this.rating, required final  List<String> review, required this.suggestion}): _review = review,super._();
  factory _ReviewDto.fromJson(Map<String, dynamic> json) => _$ReviewDtoFromJson(json);

@override final  int rating;
 final  List<String> _review;
@override List<String> get review {
  if (_review is EqualUnmodifiableListView) return _review;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_review);
}

@override final  String suggestion;

/// Create a copy of ReviewDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewDtoCopyWith<_ReviewDto> get copyWith => __$ReviewDtoCopyWithImpl<_ReviewDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewDto&&(identical(other.rating, rating) || other.rating == rating)&&const DeepCollectionEquality().equals(other._review, _review)&&(identical(other.suggestion, suggestion) || other.suggestion == suggestion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rating,const DeepCollectionEquality().hash(_review),suggestion);

@override
String toString() {
  return 'ReviewDto(rating: $rating, review: $review, suggestion: $suggestion)';
}


}

/// @nodoc
abstract mixin class _$ReviewDtoCopyWith<$Res> implements $ReviewDtoCopyWith<$Res> {
  factory _$ReviewDtoCopyWith(_ReviewDto value, $Res Function(_ReviewDto) _then) = __$ReviewDtoCopyWithImpl;
@override @useResult
$Res call({
 int rating, List<String> review, String suggestion
});




}
/// @nodoc
class __$ReviewDtoCopyWithImpl<$Res>
    implements _$ReviewDtoCopyWith<$Res> {
  __$ReviewDtoCopyWithImpl(this._self, this._then);

  final _ReviewDto _self;
  final $Res Function(_ReviewDto) _then;

/// Create a copy of ReviewDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rating = null,Object? review = null,Object? suggestion = null,}) {
  return _then(_ReviewDto(
rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,review: null == review ? _self._review : review // ignore: cast_nullable_to_non_nullable
as List<String>,suggestion: null == suggestion ? _self.suggestion : suggestion // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
