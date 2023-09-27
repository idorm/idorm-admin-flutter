import 'package:flutter/material.dart';

class ToggleBtn extends StatefulWidget {
  ToggleBtn({Key? key, required this.isPublicChecked, required this.action})
      : super(key: key);

  bool isPublicChecked;
  Function() action;

  @override
  State<ToggleBtn> createState() => _ToggleBtnState();
}

class _ToggleBtnState extends State<ToggleBtn> {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: widget.isPublicChecked,
      onChanged: (value) {
        setState(() {
          widget.isPublicChecked = value;
          widget.action();
        });
      },
    );
  }
}
