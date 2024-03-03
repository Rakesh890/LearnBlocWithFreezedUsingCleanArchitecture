
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_model.freezed.dart';
part 'rating_model.g.dart';

@freezed
abstract class Rating with _$Rating{
  const factory Rating({
    required final double? rate,
    required final int? count,
  }) = _Rating;

  factory Rating.fromJson(Map<String,dynamic> json) => _$RatingFromJson(json);
}