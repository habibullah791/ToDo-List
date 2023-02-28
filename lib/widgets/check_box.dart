import 'package:flutter/material.dart';



class CheckBox extends StatefulWidget {
  const CheckBox({
    super.key,
  });

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      // change the color of the checkbox
      activeColor: const Color(0xFF152A38),
      value: isChecked,
      onChanged: (newValue) {
        setState(
          () {
            isChecked = newValue!;
          },
        );
      },
    );
  }
}
