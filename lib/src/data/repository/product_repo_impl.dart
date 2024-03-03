

import 'package:bloc_with_freezed_example/src/data/data_sources/product_source.dart';
import 'package:bloc_with_freezed_example/src/data/data_sources/remote_source/product_source_impl.dart';
import 'package:bloc_with_freezed_example/src/data/models/product_models.dart';
import 'package:bloc_with_freezed_example/src/domain/repository/product_repository.dart';
import 'package:dartz/dartz.dart';

class ProductRepoImpl extends ProductRepository{

  final ProductSource productSource;


  ProductRepoImpl({required this.productSource});

  @override
  Future<Either<List<ProductModel>, AppException>> getProducts() async {
    try{
      final response = await productSource.getAllProducts();
      return left(response);
    }catch(err){
      throw right(err);
    }
  }

}