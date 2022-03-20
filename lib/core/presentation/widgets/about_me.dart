import 'package:flutter/material.dart';
import 'package:flutter_portfolio/core/content/about_me_content.dart';
import 'package:flutter_portfolio/core/global_style/global_style.dart';
import 'package:flutter_portfolio/core/presentation/widgets/button/outlined_button.dart';
import 'package:flutter_portfolio/core/utils/url.dart';

const cvLink =
    "https://drive.google.com/file/d/1FeHDO56B4om-BLkSmxJhqJDg9IQ7NrkK/view?usp=sharing";

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({Key? key}) : super(key: key);

  void _launchURL(String url) async {
    await CustomLaunch.url(url);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kPaddingSection(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kVerticalSpaceLarge,
          Text(
            "About me:",
            style: kHeadline3.copyWith(color: kColorPrimary),
          ),
          kVerticalSpaceSmall,
          const Text(kContentAboutIntro, style: kParagraph1),
          kVerticalSpaceMedium,
          const AboutItemWidget(
            title: kContentMateStacks,
            description: kContentMateStacksDescription,
          ),
          const AboutItemWidget(
            title: kContentKiezchecker,
            description: kContentKiezcheckerDescription,
          ),
          const AboutItemWidget(
            title: kContentNeon,
            description: kContentNeonDescription,
          ),
          kVerticalSpaceLarge,
          OutlinedButtonWidget.primary(
            text: 'Detailed CV',
            onPressed: () {
              _launchURL(cvLink);
            },
          ),
          kVerticalSpaceMassive,
        ],
      ),
    );
  }
}

class AboutItemWidget extends StatelessWidget {
  const AboutItemWidget({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: kPaddingSmall),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: kHeadline4,
          ),
          kVerticalSpaceSmall,
          SelectableText(description, style: kParagraph1),
        ],
      ),
    );
  }
}
