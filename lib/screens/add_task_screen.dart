import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task_data.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String titleText = '';

    return Container(
      color: const Color(0xFF757575),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF152A38),
                fontSize: 30.0,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              cursorColor: const Color(0xFF152A38),
              style: const TextStyle(
                color: Color(0xFF152A38),
              ),
              onChanged: (newText) {
                titleText = newText;
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFF152A38),
              ),
              onPressed: () {
                // Provider.of without passing `listen: false`.
                // This is because we don't need to rebuild the widget
                // when the list changes.

                Provider.of<TaskData>(context, listen: false).changeList(titleText);
                Navigator.pop(context);
              },
              child: const Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
