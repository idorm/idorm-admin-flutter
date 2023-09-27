import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:idorm_admin_flutter/presentation/common/colors.dart';

enum Mode {
  register,
  edit
}

class IDormBtn extends StatelessWidget {
  const IDormBtn(
      {Key? key, this.isEnabled = true, required this.action, required this.mode})
      : super(key: key);

  final Mode mode;
  final bool isEnabled;
  final Function() action;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        onPressed: () {
          if(isEnabled) action();
        },

        color: mode == Mode.register ? IDormColors.primary : IDormColors.gray3,
        splashColor: mode == Mode.register ? IDormColors.primary : IDormColors.gray3,
        highlightColor: mode == Mode.register ? IDormColors.primary : IDormColors.gray3,
        child:Text(
          mode == Mode.register ? "등록" : "수정",
          style: mode == Mode.register ? const TextStyle(color: IDormColors.white, fontWeight: FontWeight.w500, fontSize: 16) : const TextStyle(color: IDormColors.gray4, fontWeight: FontWeight.w500, fontSize: 16),
        ),
      ),
    );
  }
}
