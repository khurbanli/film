import 'package:ecommerce/constant/theme.dart';
import 'package:ecommerce/widget/login_widget.dart';
import 'package:ecommerce/widget/next_widget.dart';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _nextPage() {
    if (_currentPage < 2) {
      _pageController.animateToPage(
        _currentPage + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LoginWidget()));
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (int page) {
          setState(() {
            _currentPage = page;
          });
        },
        children: const [
          HomeWidget(
            title: "All your favorites",
            description:
                "Get all your loved foods in one place, you just place the order we do the rest",
            color: Colors.greenAccent,
          ),
          HomeWidget(
            title: "Order from choosen chef",
            description: "Get all your loved foods in one once place,"
                "you just place the orer we do the rest",
            color: Colors.blueAccent,
          ),
          HomeWidget(
            title: "Free delivery offers",
            description: "Get all your loved foods in one once place,"
                "you just place the orer we do the rest",
            color: Colors.orangeAccent,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: _nextPage,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme().butonColor,
                  foregroundColor: Colors.white,
                ),
                child: Text(
                  _currentPage == 2 ? "GET STARTED" : "NEXT",
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 5),
            if (_currentPage != 2)
              TextButton(
                onPressed: () {
                  _nextPage();
                },
                child: const Text("Skip"),
              ),
          ],
        ),
      ),
    );
  }
}
