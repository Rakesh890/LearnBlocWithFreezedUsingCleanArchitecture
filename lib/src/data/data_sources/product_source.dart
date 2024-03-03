import 'package:bloc_with_freezed_example/src/data/models/product_models.dart';

abstract class ProductSource{
  Future<List<ProductModel>> getAllProducts();
}