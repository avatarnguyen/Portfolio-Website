import 'package:flutter/material.dart';
import 'package:flutter_portfolio/core/global_style/global_style.dart';
import 'package:flutter_portfolio/core/presentation/widgets/button/base_button.dart';

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
  final void Function() onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return icon != null
        ? BaseButtonWidget.icon(
            style: ElevatedButton.styleFrom(
              padding: kPaddingButton,
              side: BorderSide(color: color!),
              onPrimary: textColor,
              primary: kColorBackground,
            ),
            icon: icon,
            text: text,
            onPressed: onPressed,
          )
        : BaseButtonWidget.filled(
            style: ElevatedButton.styleFrom(
              padding: kPaddingButton,
              side: BorderSide(color: color!),
              onPrimary: textColor,
              primary: kColorBackground,
            ),
            text: text,
            onPressed: onPressed,
          );
  }
}
