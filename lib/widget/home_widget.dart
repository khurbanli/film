import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.menu),
                    ),
                    const Expanded(
                      child: ListTile(
                        title: Text("Deliver to"),
                        subtitle: Text("Halal Lab office"),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.shopping_cart_sharp),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "Hey Halal, Good Afternoon!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(height: 20),
                Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    color: Colors.grey,
                    child: const Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(width: 15),
                        Text("Search dishes, restaurants"),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
