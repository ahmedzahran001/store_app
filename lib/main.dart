import 'package:flutter/material.dart';
import 'package:store_me/screens/home_screen.dart';
import 'package:store_me/screens/update_product_screen.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        UpdateProductScreen.id : (context)=> UpdateProductScreen(),
      },
      initialRoute: HomeScreen.id,
    );
  }
}
