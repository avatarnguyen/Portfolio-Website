import 'package:flutter/material.dart';
import 'package:flutter_portfolio/core/global_style/global_style.dart';

class NavLinkWidget extends StatelessWidget {
  const NavLinkWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

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
          style: kHeadline4,
        ),
        onPressed: () {},
      ),
    );
  }
}
