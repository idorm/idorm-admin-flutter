import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../common/colors.dart';

class IDormCheckBox extends StatefulWidget {
  IDormCheckBox(
      {Key? key,
      this.size = 24,
      required this.value,
      required this.onChanged,
      this.isRectangle = false})
      : super(key: key);

  double size;
  bool value;
  bool isRectangle;
  Function(bool checked) onChanged;

  @override
  State<IDormCheckBox> createState() => _IDormCheckBoxState();
}

class _IDormCheckBoxState extends State<IDormCheckBox> {
  Color get _rectangleColor => widget.value ? IDormColors.primary : IDormColors.gray3;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          widget.onChanged(!widget.value);
        },
        child: widget.isRectangle
            ? Container(
                width: widget.size,
                height: widget.size,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: widget.value ? IDormColors.primary : IDormColors.white,
                    border: Border.all(
                      color: _rectangleColor,
                      width: widget.isRectangle ? 2 : 1.5,
                    )),
                child: widget.isRectangle ? _Check() : _Circle())
            : Container(
                width: widget.size,
                height: widget.size,
                padding: EdgeInsets.all(3.5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: IDormColors.gray2,
                      width: 1.5,
                    )),
                child: _Circle()));
  }

  Widget _Circle() {
    if (!widget.value) return SizedBox.shrink();

    return Container(
      decoration: BoxDecoration(
          color: IDormColors.primary, borderRadius: BorderRadius.circular(100)),
    );
  }

  Widget _Check() {
    if (!widget.value) return SizedBox.shrink();

    return Container(
      child: Padding(
          padding: EdgeInsets.all(2),
          child:
              SvgPicture.asset("assets/box_check.svg", color: IDormColors.primary)),
    );
  }
}
