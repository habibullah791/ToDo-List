import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallback;

  const TaskTile({
    super.key,
    required this.taskTitle,
    required this.isChecked,
    required this.checkboxCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
          activeColor: const Color(0xFF152A38),
          value: isChecked,
          onChanged: (newValue) {
            checkboxCallback(newValue);
          }),
    );
  }
}
