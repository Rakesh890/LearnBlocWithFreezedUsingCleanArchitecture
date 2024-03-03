import 'package:bloc_with_freezed_example/src/data/data_sources/product_source.dart';
import 'package:bloc_with_freezed_example/src/data/models/product_models.dart';
import 'package:bloc_with_freezed_example/src/utils/config.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class ProductSourceImpl extends ProductSource {
  final Dio client;

  ProductSourceImpl({required this.client});

  @override
  Future<List<ProductModel>> getAllProducts() async {
    final response = await client.get(ApiConfig.getAllProductsUrl);
    if (response.statusCode == 200) {
      List<ProductModel> list = [];
      for (var items in response.data) {
        final newItems = ProductModel.fromJson(items);
        list.add(newItems);
      }
      return list;
    } else {
      throw ServerException(message: response.data.toString());
    }
  }
}

abstract class AppException {}

class ServerException extends AppException {
  final String message;
  ServerException({required this.message});
}
