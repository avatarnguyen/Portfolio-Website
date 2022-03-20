import 'package:flutter/material.dart';
import 'package:flutter_portfolio/core/global_style/global_style.dart';
import 'package:flutter_portfolio/core/presentation/widgets/hero.dart';
import 'package:flutter_portfolio/core/presentation/widgets/navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: kColorDarker,
          elevation: 0,
          title: const Padding(
            // TODO: Make this value responsive
            padding: EdgeInsets.only(left: kPaddingMassive),
            child: Text(
              'Anh Nguyen',
              style: kNavLogo,
            ),
          ),
          actions: const [
            NavLinkWidget(title: 'Home'),
            NavLinkWidget(title: 'About me'),
            NavLinkWidget(title: 'Project'),
            NavLinkWidget(title: 'Contact'),
            SizedBox(width: kPaddingMassive),
          ]),
      body: Container(
        color: kColorBackground, // Website Page Background color
        child: Column(
          children: [
            const HeroWidget(),
            Container(
              color: kColorDarker,
              height: 80,
              width: screenWidth(context),
            ),
          ],
        ),
      ),
    );
  }
}
