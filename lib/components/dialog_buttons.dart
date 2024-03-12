import 'package:flutter/material.dart';

class DialogButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  DialogButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style:
          TextButton.styleFrom(side: BorderSide(color: Colors.grey.shade600)),
      child: Text(
        text,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
