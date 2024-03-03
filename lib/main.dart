import 'package:bloc_with_freezed_example/src/presenation/home_bloc/home_bloc.dart';
import 'package:bloc_with_freezed_example/src/presenation/wishlist_product/wishlist_cubit.dart';
import 'package:flutter/material.dart';
import 'injector.dart' as di;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'injector.dart';
import 'src/presenation/pages/home_page.dart';

void main() {
  di.initInjectors();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
  providers: [
    BlocProvider(create: (context) => getIt<HomeBloc>()..add(const FetchProductEvent())),
    BlocProvider(create: (context) => getIt<WishlistCubit>()),
  ],
  child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    ),
);
  }
}