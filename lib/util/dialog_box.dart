import 'package:flutter/material.dart';
import 'package:flutter3/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({super.key,required this.controller,required this.onCancel,required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.lightBlueAccent,
      content: Container(height: 200,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(border: OutlineInputBorder(),
            hintText: "Add Task"
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyButton(text: "Save", onPressed: onSave),
              const SizedBox(width: 8),
              MyButton(text: "Cancel", onPressed: onCancel)
            ],
          )
        ],
        ),
      ),
    );
  }
}
