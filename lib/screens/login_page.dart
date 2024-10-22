// ignore_for_file: prefer_const_constructors

import 'package:app_pesa_ms/common_components/my_default_button.dart';
import 'package:app_pesa_ms/core.controllers/login_controller.dart';
import 'package:app_pesa_ms/screens/dashboard_page.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final LoginController loginControl = Get.put(LoginController());
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              children: [
                // logo
                Image.asset(
                  'images/pesamanager_black.png',
                  height: 100,
                ),
                // tilte
                Text('LOGIN',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color:  Colors.black)),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3),)),
                  controller: emailcontroller,
                ),
                SizedBox(
                  height: 10,
                ),
                // subtile
                TextField(
                  decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3))),
                  controller: passwordcontroller,
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Forgot Password?',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color:Colors.black)),
                SizedBox(
                  height: 10,
                ),
                // start now button
                GestureDetector(
                    onTap: () => Get.to(DashboardPage()),
                    child: MyButton(
                      color:  Colors.black,
                      borderRadius: BorderRadius.circular(8),
                      text: "Login",
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
