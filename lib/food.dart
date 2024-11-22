import 'dart:async';

import 'package:ecommerce/screen/next.dart';
import 'package:flutter/material.dart';

class Food extends StatefulWidget {
  const Food({super.key});

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  void initState() {
    super.initState();
    // 3 saniyə gözləyir və sonra əsas səhifəyə yönləndirir
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Home()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("lib/asset/food.png"),
      ),
    );
  }
}
