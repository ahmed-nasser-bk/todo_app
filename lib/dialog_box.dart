// ignore_for_file: sized_box_for_whitespace, must_be_immutable

import 'package:flutter/material.dart';
import 'package:todo_app/my_buttons.dart';

class DialogBox extends StatelessWidget {

  DialogBox({
    super.key, 
    this.controller, 
    required this.onSave,
  });

  TextEditingController? controller;
  VoidCallback onSave;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 300,
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Add a new task',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  text: 'Save', 
                  onPressed: onSave
                ),
                const SizedBox(width: 15,),
                MyButton(
                  text: 'Cancel', 
                  onPressed: (() => Navigator.of(context).pop()),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}