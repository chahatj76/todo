import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallback;
  final Function longPressCallback;

  TaskTile(
      {this.taskTitle,
      this.isChecked = false,
      this.checkBoxCallback,
      this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkBoxCallback,
      ),
      onLongPress: longPressCallback,
    );
  }
}

// void checkState(bool isChecked) {
//   setState(() {
//     boxState = isChecked;
//   });
// }

// class TaskCheckBox extends StatelessWidget {
//   TaskCheckBox({this.toggleBoxState, this.isChecked});
//
//   final bool isChecked;
//   final Function toggleBoxState;
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       value: isChecked,
//       onChanged: toggleBoxState,
//     );
//   }
// }
