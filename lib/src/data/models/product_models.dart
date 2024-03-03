
import 'package:bloc_with_freezed_example/src/data/models/rating_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_models.freezed.dart';
part 'product_models.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
  required final int? id,
  required final String? title,
  required final double? price,
  required final String? description,
  required final String? category,
  required final String? image,
  required final Rating? rating
}) = _ProdcutModel;

      factory ProductModel.fromJson(Map<String,dynamic> json) => _$ProductModelFromJson(json);
}

