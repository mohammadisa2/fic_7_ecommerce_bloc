import 'package:fic_7_ecommerce/bloc/my_favorite_product/my_favorite_product_bloc.dart';
import 'package:fic_7_ecommerce/core.dart';
import 'package:fic_7_ecommerce/core/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/categories/categories_bloc.dart';
import 'bloc/login/login_bloc.dart';
import 'bloc/logout/logout_bloc.dart';
import 'bloc/products/products_bloc.dart';
import 'bloc/register/register_bloc.dart';
import 'data/datasources/auth_local_datasource.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => RegisterBloc(),
          ),
          BlocProvider(
            create: (context) => LoginBloc(),
          ),
          BlocProvider(
            create: (context) => LogoutBloc(),
          ),
          BlocProvider(
            create: (context) => ProductsBloc(),
          ),
          BlocProvider(
            create: (context) => CategoriesBloc(),
          ),
          BlocProvider(
            create: (context) => MyFavoriteProductBloc(),
          ),
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              scaffoldBackgroundColor: Colors.white,
              colorScheme: ColorScheme.fromSwatch(
                // backgroundColor: primaryBlack,
                primarySwatch: primaryBlack,
              ),
              useMaterial3: true,
              textTheme: myTextTheme,
              appBarTheme: myAppBarTheme,
            ),
            home: FutureBuilder(
                future: AuthLocalDatasource().getUser(),
                builder: (context, snapshot) {
                  if (snapshot.data?.role == "admin") {
                    return const MainNavigationSellerView();
                  } else if (snapshot.data?.role == "user") {
                    return const MainNavigationView();
                  } else {
                    return const LoginView();
                  }
                }))
        // const SplashView(),
        );
  }
}
