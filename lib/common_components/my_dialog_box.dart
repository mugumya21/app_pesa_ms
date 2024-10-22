// ignore_for_file: must_be_immutable

import 'package:app_pesa_ms/common_components/my_dialog_button.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onsave;
  VoidCallback oncancel;
  DialogBox(
      {super.key,
      required this.controller,
      required this.oncancel,
      required this.onsave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(2)),
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: "Enter your text...",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3))),
              controller: controller,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DialogButton(textname: "Save", onPressed: onsave),
                const SizedBox(
                  width: 20,
                ),
                DialogButton(textname: "Cancel", onPressed: oncancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
