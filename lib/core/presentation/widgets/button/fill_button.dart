import 'package:flutter/material.dart';
import 'package:flutter_portfolio/core/global_style/global_style.dart';
import 'package:flutter_portfolio/core/presentation/widgets/button/base_button.dart';

class FillButtonWidget extends StatelessWidget {
  const FillButtonWidget({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color,
    this.textColor,
    this.icon,
  }) : super(key: key);

  const FillButtonWidget.primary({
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
    return icon != null
        ? BaseButtonWidget.icon(
            style: ElevatedButton.styleFrom(
              padding: kPaddingButton,
              onPrimary: textColor,
              primary: color,
            ),
            icon: icon,
            text: text,
            onPressed: onPressed,
          )
        : BaseButtonWidget.filled(
            style: ElevatedButton.styleFrom(
              padding: kPaddingButton,
              onPrimary: textColor,
              primary: color,
            ),
            text: text,
            onPressed: onPressed,
          );
  }
}
