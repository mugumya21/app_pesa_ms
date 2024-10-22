import 'package:flutter/material.dart';

class DialogButton extends StatelessWidget {
  final String textname;
  VoidCallback onPressed;
  DialogButton({super.key, required this.onPressed, required this.textname});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      height: 20,
      child: MaterialButton(
        color: Colors.yellow,
        onPressed: onPressed,
        child: Text(textname),
      ),
    );
  }
}
