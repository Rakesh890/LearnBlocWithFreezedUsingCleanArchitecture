import 'package:bloc_with_freezed_example/injector.dart';
import 'package:bloc_with_freezed_example/src/data/models/product_models.dart';
import 'package:bloc_with_freezed_example/src/presenation/wishlist_product/wishlist_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../home_bloc/home_bloc.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<HomeBloc, HomeState>(builder:
            (context, state) {
          return state.map(initial: (value) => const SizedBox(),
              loading: (value) => const Center(child: CircularProgressIndicator()),
              success: (value) =>
                  ListView.builder(
                    itemCount: value.productList.length,
                    itemBuilder: (context, index) {
                      final prodItems = value.productList[index];
                      return ListTile(
                        title: Text("${prodItems.title}"),
                        trailing: _addToFaveInList(prodItems, index),
                      );
                    },
                  ),
              failure: (value) => Center(child: Text(value.error),));
        },),
      ),
    );
  }

  _addToFaveInList(ProductModel prodItems, int index) {
    return BlocBuilder<WishlistCubit, WishlistState>(
      builder: (context, state) {
        return IconButton(onPressed: (){
          getIt<HomeBloc>().add(const FetchProductEvent());
          if(state.isAdded == true){
            context.read<WishlistCubit>().addToWishList(value: false,);
          }else{
            context.read<WishlistCubit>().addToWishList(value: true,);
          }
        }, icon: Icon(
          (state.isAdded == true) ? Icons.favorite:
          Icons.favorite_outline_outlined,
          color: (state.isAdded == true) ? Colors.red : Colors.grey,));
      },
    );
  }
}
