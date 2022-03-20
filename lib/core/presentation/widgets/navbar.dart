import 'package:flutter/material.dart';
import 'package:flutter_portfolio/core/global_style/global_style.dart';

class NavLinkWidget extends StatelessWidget {
  const NavLinkWidget({
    Key? key,
    required this.title,
    this.onPressed,
  }) : super(key: key);

  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kPaddingXSmall,
        vertical: kPaddingXSmall,
      ),
      child: TextButton(
        child: Text(
          title,
          style: kHeadline5,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
