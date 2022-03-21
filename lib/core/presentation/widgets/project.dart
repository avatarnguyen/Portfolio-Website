import 'package:flutter/material.dart';
import 'package:flutter_portfolio/core/content/project_content.dart';
import 'package:flutter_portfolio/core/global_style/global_style.dart';
import 'package:flutter_portfolio/core/presentation/widgets/button/fill_button.dart';
import 'package:flutter_portfolio/core/presentation/widgets/button/outlined_button.dart';
import 'package:flutter_portfolio/core/utils/url.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({Key? key}) : super(key: key);

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
          kVerticalSpaceRegular,
          Text(
            "Featured projects:",
            style: kHeadline3.copyWith(color: kColorPrimary),
          ),
          const Text(kContentProjectIntro, style: kParagraph1),
          kVerticalSpaceLarge,
          Wrap(
            spacing: kPaddingSmall,
            runSpacing: kPaddingSmall,
            children: [
              ProjectItemWidget(
                title: kContentProjectKiezchecker,
                description: kContentProjectKiezcheckerDescription,
                onProjectPressed: () {
                  const _kiezcheckerLink =
                      "https://apps.apple.com/de/app/kiezchecker-by-panup/id1561519296";
                  _launchURL(_kiezcheckerLink);
                },
              ),
              // ProjectItemWidget(
              //   title: kContentProjectKarmadise,
              //   description: kContentProjectKarmadiseDescription,
              // ),
              ProjectItemWidget(
                title: kContentProjectRefocus,
                description: kContentProjectRefocusDescription,
                onGitHubPressed: () {
                  const _refocusURL =
                      "https://github.com/avatarnguyen/refocus_app/tree/dev_51";
                  _launchURL(_refocusURL);
                },
              ),
              ProjectItemWidget(
                title: kContentProjectPortfolio,
                description: kContentProjectPortfolioDescription,
                onGitHubPressed: () {
                  const _website =
                      "https://github.com/avatarnguyen/Portfolio-Website";
                  _launchURL(_website);
                },
              ),
              ProjectItemWidget(
                title: kContentProjectGlance,
                description: kContentProjectGlanceDescription,
                onGitHubPressed: () {
                  const _glanceLink =
                      "https://github.com/avatarnguyen/glance/tree/dev_02";
                  _launchURL(_glanceLink);
                },
              ),
              ProjectItemWidget(
                title: kContentProjectThesis,
                description: kContentProjectThesisDescription,
                onProjectPressed: () {
                  const _thesisLink =
                      "https://www.mi.fu-berlin.de/wiki/bin/edit/SE/CleanArchitectureRefactoring?topicparent=SE.ThesesHome";
                  _launchURL(_thesisLink);
                },
              ),
            ],
          ),
          kVerticalSpaceMassive,
        ],
      ),
    );
  }
}

class ProjectItemWidget extends StatelessWidget {
  const ProjectItemWidget({
    Key? key,
    required this.title,
    this.onGitHubPressed,
    this.onProjectPressed,
    required this.description,
  }) : super(key: key);

  final String title;
  final String description;
  final void Function()? onGitHubPressed;
  final void Function()? onProjectPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kPaddingXSmall),
      width: screenResponsiveWidth(
        context,
        defaultValue: screenWidth(context) / 3.8,
        belowDesktop: screenWidth(context),
      ),
      decoration: const BoxDecoration(
        color: kColorOverlay,
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 4.0,
            color: Color.fromRGBO(0, 0, 0, 0.25),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: kHeadline4.copyWith(color: kColorPrimary),
          ),
          kVerticalSpaceRegular,
          Text(
            description,
            style: kParagraph1,
          ),
          kVerticalSpaceMedium,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: FillButtonWidget.primary(
                  text: 'View',
                  onPressed: onProjectPressed,
                ),
              ),
              kHorizontalSpaceRegular,
              Expanded(
                child: OutlinedButtonWidget.primary(
                  text:
                      onGitHubPressed != null ? 'Github Repo' : 'Private Repo',
                  onPressed: onGitHubPressed,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
