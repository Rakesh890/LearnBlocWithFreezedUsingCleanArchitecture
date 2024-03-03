
import 'package:bloc_with_freezed_example/src/data/models/product_models.dart';
import 'package:bloc_with_freezed_example/src/domain/repository/product_repository.dart';
import 'package:dartz/dartz.dart';

import '../../data/data_sources/remote_source/product_source_impl.dart';

class ProductUseCase{

  final ProductRepository productRepository;

  ProductUseCase({required this.productRepository});


  Future<Either<List<ProductModel>,AppException>> call() async {
    final result = await productRepository.getProducts();
    return result;
  }


}