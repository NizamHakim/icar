// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReviewDto _$ReviewDtoFromJson(Map<String, dynamic> json) => _ReviewDto(
  rating: (json['rating'] as num).toInt(),
  review: (json['review'] as List<dynamic>).map((e) => e as String).toList(),
  suggestion: json['suggestion'] as String,
);

Map<String, dynamic> _$ReviewDtoToJson(_ReviewDto instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'review': instance.review,
      'suggestion': instance.suggestion,
    };
