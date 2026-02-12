import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icar/src/features/ticket/domain/entities/review.dart';

part 'review_dto.freezed.dart';
part 'review_dto.g.dart';

@freezed
abstract class ReviewDto with _$ReviewDto {
  const ReviewDto._();

  const factory ReviewDto({
    required int rating,
    required List<String> review,
    required String suggestion,
  }) = _ReviewDto;

  factory ReviewDto.fromJson(Map<String, Object?> json) =>
      _$ReviewDtoFromJson(json);

  Review toEntity() {
    return Review(rating: rating, review: review, suggestion: suggestion);
  }

  factory ReviewDto.fromEntity(Review review) {
    return ReviewDto(
      rating: review.rating,
      review: review.review,
      suggestion: review.suggestion,
    );
  }
}
