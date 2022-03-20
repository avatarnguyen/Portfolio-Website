import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_value.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

/// 120.0
const kPaddingMassive = 120.0;

/// 40.0
const kPaddingXLarge = 80.0;

/// 36.0
const kPaddingLarge = 40.0;

/// 32.0
const kPaddingMedium = 32.0;

/// 24.0
const kPaddingRegular = 24.0;

/// 20.0
const kPaddingSmall = 20.0;

/// 16.0
const kPaddingXSmall = 16.0;

/// 8.0
const kPaddingXXSmall = 8.0;

/// 4.0
const kPaddingTiny = 4.0;

const kPaddingPage = EdgeInsets.symmetric(
  horizontal: kPaddingMassive,
);

const kPaddingButton = EdgeInsets.symmetric(
  vertical: kPaddingXSmall,
  horizontal: kPaddingSmall,
);

EdgeInsetsGeometry? kPaddingSection(context) =>
    ResponsiveValue<EdgeInsetsGeometry?>(
      context,
      defaultValue: kPaddingPage,
      valueWhen: [
        const Condition.smallerThan(
            name: TABLET,
            value: EdgeInsets.symmetric(horizontal: kPaddingLarge)),
      ],
    ).value;
