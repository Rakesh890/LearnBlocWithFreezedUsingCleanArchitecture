import 'package:bloc_with_freezed_example/src/data/data_sources/remote_source/product_source_impl.dart';
import 'package:bloc_with_freezed_example/src/data/models/product_models.dart';
import 'package:dartz/dartz.dart';

abstract class ProductRepository{
  Future<Either<List<ProductModel>,AppException>> getProducts();
}