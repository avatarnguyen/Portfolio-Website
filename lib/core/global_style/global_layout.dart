import 'package:flutter/widgets.dart';
import 'package:responsive_framework/responsive_framework.dart';

const Widget kHorizontalSpaceTiny = SizedBox(width: 4);
const Widget kHorizontalSpaceSmall = SizedBox(width: 8);
const Widget kHorizontalSpaceRegular = SizedBox(width: 16);
const Widget kHorizontalSpaceMedium = SizedBox(width: 24);
const Widget kHorizontalSpaceLarge = SizedBox(width: 48);

// Vertical Spacing
const Widget kVerticalSpaceTiny = SizedBox(height: 4);
const Widget kVerticalSpaceSmall = SizedBox(height: 8);
const Widget kVerticalSpaceRegular = SizedBox(height: 16);
const Widget kVerticalSpaceMedium = SizedBox(height: 24);
const Widget kVerticalSpaceLarge = SizedBox(height: 48);
const Widget kVerticalSpaceMassive = SizedBox(height: 120);

// const Widget progressIndicator = SizedBox(
//   height: 40,
//   width: 40,
//   child: CircularProgressIndicator.adaptive(),
// );

// Screen Size Helpers
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

/// Returns the pixel amount for the percentage of the screen height. [percentage] should
/// be between 0 and 1 where 0 is 0% and 100 is 100% of the screens height
double screenHeightPercentage(BuildContext context, {double percentage = 1}) =>
    screenHeight(context) * percentage;

/// Returns the pixel amount for the percentage of the screen width. [percentage] should
/// be between 0 and 1 where 0 is 0% and 100 is 100% of the screens width
double screenWidthPercentage(BuildContext context, {double percentage = 1}) =>
    screenWidth(context) * percentage;

double? screenResponsiveWidth(
  BuildContext context, {
  double? defaultValue,
  double? belowTablet,
  double? belowDesktop,
}) =>
    ResponsiveValue<double?>(
      context,
      defaultValue: defaultValue,
      valueWhen: [
        if (belowTablet != null)
          Condition.smallerThan(
            name: TABLET,
            value: belowTablet,
          ),
        if (belowDesktop != null)
          Condition.smallerThan(
            name: DESKTOP,
            value: belowDesktop,
          ),
      ],
    ).value;
