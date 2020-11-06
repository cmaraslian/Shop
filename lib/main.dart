import 'package:Shop/providers/cart.dart';
import 'package:Shop/providers/orders.dart';
import 'package:Shop/providers/products.dart';
import 'package:Shop/utils/app_routes.dart';
import 'package:Shop/views/cart_screen.dart';
import 'package:Shop/views/orders_screen.dart';
import 'package:Shop/views/product_detail_screen.dart';
import 'package:Shop/views/products_overview_screen.dart';
import 'package:Shop/views/products_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => new Products()),
        ChangeNotifierProvider(create: (_) => new Cart()),
        ChangeNotifierProvider(create: (_) => new Orders()),
      ],
      //new Products
      child: MaterialApp(
        title: 'Minha Loja',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        //home: ProductOverviewScreen(),
        routes: {
          AppRoutes.HOME: (ctx) => ProductOverviewScreen(),
          AppRoutes.PRODUCT_DETAIL: (ctx) => ProductDetailScreen(),
          AppRoutes.CART: (ctx) => CartScreen(),
          AppRoutes.ORDERS: (ctx) => OrderScreen(),
          AppRoutes.PRODUCTS: (ctx) => ProdutcsScreen(),
        },
      ),
    );
  }
}
