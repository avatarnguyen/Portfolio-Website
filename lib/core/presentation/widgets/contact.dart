import 'package:flutter/material.dart';
import 'package:flutter_portfolio/core/global_style/global_style.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kPaddingSection(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kVerticalSpaceRegular,
          Text(
            "Connect with me:",
            style: kHeadline3.copyWith(color: kColorPrimary),
          ),
          kVerticalSpaceRegular,
          const Text(
            "E-Mail",
            style: kHeadline4,
          ),
          const SelectableText('nguyenanh12.vn@gmail.com', style: kParagraph1),
          kVerticalSpaceMassive,
        ],
      ),
    );
  }
}
