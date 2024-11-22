import 'package:ecommerce/constant/theme.dart';
import 'package:ecommerce/screen/home.dart';
import 'package:ecommerce/widget/register_widget.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  bool? remember = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              color: Colors.black,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Log In",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white),
                  ),
                  Text(
                    "Please sign in to your existing account",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                width: double.infinity,
                height: 500,
                color: AppTheme().containerColor,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 80,
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: "gmail",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              )),
                        ),
                      ),
                      //const SizedBox(height: 10),
                      SizedBox(
                        width: double.infinity,
                        height: 80,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: "password",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15))),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 200,
                            child: CheckboxListTile(
                              title: const Text("Remember"),
                              value: remember,
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (bool? val) {
                                setState(() {
                                  remember = val;
                                });
                              },
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Forgot Password",
                              style:
                                  TextStyle(color: Colors.orange, fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Home()),
                              (Route<dynamic> route) => false,
                            );
                          },
                          child: const Text(
                            "LogIn",
                            style: TextStyle(fontSize: 20),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppTheme().butonColor,
                              foregroundColor: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don’t have an account?"),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RegisterWidget()));
                            },
                            child: const Text(
                              "Sing Up",
                              style:
                                  TextStyle(color: Colors.orange, fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text("Or"),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
