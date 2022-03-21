import 'package:flutter/material.dart';
import 'package:flutter_portfolio/core/content/hero_content.dart';
import 'package:flutter_portfolio/core/global_style/global_style.dart';
import 'package:flutter_portfolio/core/presentation/widgets/button/fill_button.dart';
import 'package:flutter_portfolio/core/presentation/widgets/button/outlined_button.dart';
import 'package:flutter_portfolio/core/utils/url.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({
    Key? key,
    required this.onAboutMePress,
  }) : super(key: key);

  final void Function() onAboutMePress;

  void _launchURL(String url) async {
    await CustomLaunch.url(url);
  }

  @override
  Widget build(BuildContext context) {
    final _screen = ResponsiveWrapper.of(context);
    return Container(
      padding: kPaddingSection(context),
      child: Column(
        children: [
          kVerticalSpaceMassive,
          kVerticalSpaceLarge,
          ResponsiveRowColumn(
            rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
            rowCrossAxisAlignment: CrossAxisAlignment.start,
            rowPadding: const EdgeInsets.all(30),
            columnPadding: const EdgeInsets.all(30),
            columnMainAxisAlignment: MainAxisAlignment.spaceBetween,
            layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            children: [
              ResponsiveRowColumnItem(
                rowFlex: 1,
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kVerticalSpaceLarge,
                      const Text(
                        kContentHeroIntro,
                        style: kHeadline3,
                      ),
                      const Text(
                        kContentHeroName,
                        style: kHeadline1,
                      ),
                      const Text(
                        kContentHeroDescription,
                        style: kParagraph1,
                      ),
                      kVerticalSpaceLarge,
                      Row(
                        children: [
                          FillButtonWidget.primary(
                            icon: Icons.person,
                            text: "LinkedIn",
                            onPressed: () {
                              const _linkedIn =
                                  "https://www.linkedin.com/in/anh-nguyen-b17b9416a/";
                              _launchURL(_linkedIn);
                            },
                          ),
                          kHorizontalSpaceMedium,
                          OutlinedButtonWidget.primary(
                            icon: Icons.folder,
                            text: 'Github',
                            onPressed: () {
                              _launchURL("https://github.com/avatarnguyen");
                            },
                          ),
                        ],
                      ),
                      if (_screen.isSmallerThan(TABLET)) kVerticalSpaceLarge
                    ],
                  ),
                ),
              ),
              if (_screen.isLargerThan(MOBILE))
                ResponsiveRowColumnItem(
                  rowFlex: 1,
                  child: Stack(
                    children: [
                      Container(
                        height: _screen.isSmallerThan(TABLET) ? 350 : 450,
                        width: _screen.isSmallerThan(TABLET) ? 250 : 450,
                        decoration: const BoxDecoration(
                          color: kColorPrimary,
                          borderRadius: BorderRadius.all(
                            Radius.circular(300.0),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 72,
                        child: SizedBox(
                          height: 600,
                          width: 300,
                          child: Center(
                            child: Image.asset(
                              'assets/images/profile.png',
                              fit: BoxFit.cover,
                              width: 700,
                              height: 600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
          kVerticalSpaceLarge,
        ],
      ),
    );
  }
}
