import 'package:flutter/material.dart';
import 'package:flutter_portfolio/core/global_style/global_style.dart';

class OutlinedButtonWidget extends StatelessWidget {
  const OutlinedButtonWidget({
    Key? key,
    required this.text,
    this.color,
    this.textColor,
    required this.onPressed,
    this.icon,
  }) : super(key: key);

  const OutlinedButtonWidget.primary({
    Key? key,
    required this.text,
    required this.onPressed,
    this.icon,
  })  : color = kColorPrimary,
        textColor = kColorWhite,
        super(key: key);

  final String text;
  final Color? color;
  final Color? textColor;
  final void Function()? onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    final _textWidget = Text(
      text,
      style: kTextButton,
    );
    return icon != null
        ? OutlinedButton.icon(
            icon: Icon(
              icon,
              color: kColorWhite,
            ),
            style: OutlinedButton.styleFrom(
              padding: kPaddingButton,
              side: BorderSide(color: color!),
            ),
            label: _textWidget,
            onPressed: onPressed,
          )
        : OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: kPaddingButton,
              side: BorderSide(color: color!),
            ),
            child: _textWidget,
            onPressed: onPressed,
          );
  }
}
