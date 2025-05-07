// ignore_for_file: sized_box_for_whitespace, must_be_immutable

import 'package:flutter/material.dart';

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
      backgroundColor: Theme.of(context).colorScheme.surface,
      content: Container(
        height: 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 300,
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary)
                  ),
                  hintText: 'Add new task',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: onSave,
                  color: Theme.of(context).colorScheme.primary,
                  child: Text(
                    'Save', 
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary
                    ),
                  ),
                ),
                const SizedBox(width: 25,),
                MaterialButton(
                  onPressed: (() => Navigator.of(context).pop()),
                  color: Theme.of(context).colorScheme.primary,
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}