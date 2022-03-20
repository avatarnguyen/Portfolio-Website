import 'package:flutter/material.dart';
import 'package:flutter_portfolio/core/global_style/global_style.dart';

enum ButtonType {
  normal,
  icon,
}

class BaseButtonWidget extends StatelessWidget {
  const BaseButtonWidget({
    Key? key,
    this.style,
    required this.type,
    required this.onPressed,
    required this.text,
    this.icon,
  }) : super(key: key);

  const BaseButtonWidget.icon({
    Key? key,
    this.style,
    required this.icon,
    required this.onPressed,
    required this.text,
  })  : type = ButtonType.icon,
        super(key: key);

  const BaseButtonWidget.filled({
    Key? key,
    this.style,
    required this.onPressed,
    required this.text,
  })  : type = ButtonType.normal,
        icon = null,
        super(key: key);

  final ButtonType type;
  final void Function()? onPressed;
  final ButtonStyle? style;
  final String text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case ButtonType.normal:
        return ElevatedButton(
          child: Text(
            text,
            style: kTextButton,
          ),
          style: style,
          onPressed: onPressed,
        );
      case ButtonType.icon:
        return ElevatedButton.icon(
          icon: Icon(icon),
          label: Text(
            text,
            style: kTextButton,
          ),
          style: style,
          onPressed: onPressed,
        );
    }
  }
}
