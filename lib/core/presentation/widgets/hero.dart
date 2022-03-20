import 'package:flutter/material.dart';
import 'package:flutter_portfolio/core/content/hero_content.dart';
import 'package:flutter_portfolio/core/global_style/global_color.dart';
import 'package:flutter_portfolio/core/global_style/global_style.dart';
import 'package:flutter_portfolio/core/presentation/widgets/button/fill_button.dart';
import 'package:flutter_portfolio/core/presentation/widgets/button/outlined_button.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: ResponsiveValue<EdgeInsetsGeometry?>(
        context,
        defaultValue: kPaddingPage,
        valueWhen: [
          const Condition.smallerThan(
              name: TABLET, value: EdgeInsets.all(kPaddingLarge)),
        ],
      ).value,
      child: Column(
        children: [
          kVerticalSpaceLarge,
          ResponsiveRowColumn(
            rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
            rowPadding: const EdgeInsets.all(30),
            columnPadding: const EdgeInsets.all(30),
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
                      const Text(
                        kContentHeroIntro,
                        style: kHeadline3,
                      ),
                      const Text(
                        kContentHeroIntro,
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
                            text: "About me",
                            onPressed: () {},
                          ),
                          kHorizontalSpaceMedium,
                          OutlinedButtonWidget.primary(
                            icon: Icons.folder,
                            text: 'Project',
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ResponsiveRowColumnItem(
                rowFlex: 1,
                child: Container(
                  height: 400,
                  width: 400,
                  color: kColorSecondary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
