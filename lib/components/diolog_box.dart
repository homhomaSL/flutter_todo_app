import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_todo_app_1/components/dialog_buttons.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCencel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCencel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 122,
        child: Column(
          children: [
            TextField(
              inputFormatters: [LengthLimitingTextInputFormatter(60)],
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: 'Add a new task',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: const BorderSide(),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DialogButton(text: 'Cancel', onPressed: onCencel),
                  DialogButton(
                    text: 'Save',
                    onPressed: onSave,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
