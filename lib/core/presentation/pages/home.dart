import 'package:flutter/material.dart';
import 'package:flutter_portfolio/core/global_style/global_style.dart';
import 'package:flutter_portfolio/core/presentation/widgets/about_me.dart';
import 'package:flutter_portfolio/core/presentation/widgets/contact.dart';
import 'package:flutter_portfolio/core/presentation/widgets/hero.dart';
import 'package:flutter_portfolio/core/presentation/widgets/navbar.dart';
import 'package:flutter_portfolio/core/presentation/widgets/project.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_currentPos);
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController
      ..removeListener(_currentPos)
      ..dispose();
  }

  void _currentPos() {
    debugPrint("${_scrollController.position} ");
  }

  void _handleScroll(double position) {
    _scrollController.animateTo(
      position,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final _screen = ResponsiveWrapper.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kColorDarker,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.only(
            left: ResponsiveWrapper.of(context).isLargerThan(TABLET)
                ? kPaddingMassive
                : kPaddingXSmall,
          ),
          child: const Text(
            'Anh Nguyen',
            style: kNavLogo,
            overflow: TextOverflow.clip,
          ),
        ),
        actions: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
            ? null
            : [
                NavLinkWidget(
                  title: 'Home',
                  onPressed: () {
                    _handleScroll(0.0);
                  },
                ),
                NavLinkWidget(
                  title: 'About me',
                  onPressed: () {
                    _handleScroll(700.0);
                  },
                ),
                NavLinkWidget(
                  title: 'Project',
                  onPressed: () {
                    _handleScroll(1490.0);
                  },
                ),
                NavLinkWidget(
                  title: 'Contact',
                  onPressed: () {
                    _handleScroll(1800.0);
                  },
                ),
                const SizedBox(width: kPaddingMassive),
              ],
      ),
      body: Container(
        color: kColorBackground, // Website Page Background color
        child: ListView(
          controller: _scrollController,
          children: [
            Stack(
              children: [
                HeroWidget(
                  onAboutMePress: () {
                    _handleScroll(640.0);
                  },
                ),
                Positioned(
                  bottom: _screen.isSmallerThan(TABLET) ? 0.0 : 40,
                  child: Container(
                    color: kColorDarker,
                    height: _screen.isSmallerThan(TABLET) ? 80.0 : 128.0,
                    width: screenWidth(context),
                  ),
                ),
              ],
            ),
            const AboutMeWidget(),
            const ProjectWidget(),
            const ContactWidget(),
          ],
        ),
      ),
    );
  }
}
