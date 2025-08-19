import 'package:fasionapp/screens/home_screen.dart';
import 'package:fasionapp/screens/sighin_screen.dart';
import 'package:fasionapp/screens/sighup_screen.dart';
import 'package:fasionapp/screens/splash_screen.dart';
import 'package:fasionapp/widget/product_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        '/SignUpScreen': (context) => const SighUpScreen(),
        '/SignInScreen': (context) => const SighInScreen(),
        '/home': (context) => const HomeScreen(),
        '/ProductScreen': (context) => ProductCard(
          image: 'assets/images/image1.jpg',
          name: 'Sample Product',
          rating: 5,
          price: 100,
        ),
      },
    );
  }
}
