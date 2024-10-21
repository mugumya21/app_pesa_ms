
// ignore_for_file: prefer_const_constructors

import 'package:app_pesa_ms/core.controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DasboardWidget extends StatelessWidget{
  DasboardWidget({super.key});
  final LoginController loginControl = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Dashboard with loans ${loginControl.counter}"),),
    );
  }
}
