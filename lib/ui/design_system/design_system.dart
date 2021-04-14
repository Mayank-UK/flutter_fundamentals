import 'package:flutter/material.dart';

class DSColors {
  // primary colors
  static const Color Primary = const Color(0xff367ebe);
  static const Color PrimaryLight = const Color(0xff77baf6);
  static const Color PrimaryDark = const Color(0xff1860a0);
  static const LinearGradient PrimaryGradient = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[
      Color(0xff1860a0),
      Color(0xff77baf6),
    ],
    tileMode: TileMode.repeated,
  );

  // accent colors
  static const Color Secondary = const Color(0xffef767a);
  static const Color SecondaryLight = const Color(0xffffb9bb);
  static const Color SecondaryDark = const Color(0xffc8575b);
  static const LinearGradient SecondaryGradient = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[
      Color(0xffc8575b),
      Color(0xffef767a),
    ],
    tileMode: TileMode.repeated,
  );

  // default system colors
  static const Color Error = const Color(0xffff0000);
  static const Color Alert = const Color(0xfffaff00);
  static const Color Success = const Color(0xff24b400);

  // typography colors
  static const Color HeadingLight = const Color(0xffffffff);
  static const Color HeadingDark = const Color(0xff000000);
  static const Color BodyLight = const Color(0xffffffff);
  static const Color BodyDark = const Color(0xff000000);
  static const Color LabelCaptionPlaceHolderLight = const Color(0xffd2d2d2);
  static const Color LabelCaptionPlaceHolderDark = const Color(0xffb3b3b3);
  static const Color LinkLight = const Color(0xfff4f4f4);
  static const Color LinkDark = const Color(0xff000000);

  // element backgrounds
  static const Color BackgroundBodyLight = const Color(0xfff9f9f9);
  static const Color BackgroundBodyDark = const Color(0x15000000);
  static const Color BackgroundInputField = const Color(0xfffbfbfb);
  static const LinearGradient BackgroundBodyGradient = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[
      Color(0x15000000),
      Color(0xffffffff),
    ],
    tileMode: TileMode.repeated,
  );

  // border colors
  static const Color BorderLight = const Color(0xffe7e7e7);
  static const Color BorderDark = const Color(0xffc4c4c4);
}

class DSTypography {
  static const String _montserrat = 'Montserrat';
  static const String _roboto_slab = 'Roboto Slab';

  static const TextStyle h1Light = const TextStyle(
    color: DSColors.HeadingLight,
    fontFamily: _montserrat,
    fontWeight: FontWeight.w300,
    fontSize: 96,
    height: 1,
    letterSpacing: -1.5,
  );

  static const TextStyle h1Dark = const TextStyle(
    color: DSColors.HeadingDark,
    fontFamily: _montserrat,
    fontSize: 96,
    fontWeight: FontWeight.w300,
    height: 1,
    letterSpacing: -1.5,
  );

  static const TextStyle h2Light = const TextStyle(
    color: DSColors.HeadingLight,
    fontFamily: _montserrat,
    fontSize: 60,
    fontWeight: FontWeight.w300,
    height: 1,
    letterSpacing: -0.5,
  );

  static const TextStyle h2Dark = const TextStyle(
    color: DSColors.HeadingDark,
    fontFamily: _montserrat,
    fontSize: 60,
    fontWeight: FontWeight.w300,
    height: 1,
    letterSpacing: -0.5,
  );

  static const TextStyle h3Light = const TextStyle(
    color: DSColors.HeadingLight,
    fontFamily: _montserrat,
    fontSize: 48,
    fontWeight: FontWeight.w300,
    height: 1,
    letterSpacing: 0,
  );

  static const TextStyle h3Dark = const TextStyle(
    color: DSColors.HeadingDark,
    fontFamily: _montserrat,
    fontSize: 48,
    fontWeight: FontWeight.w300,
    height: 1,
    letterSpacing: 0,
  );

  static const TextStyle h4Light = const TextStyle(
    color: DSColors.HeadingLight,
    fontFamily: _montserrat,
    fontWeight: FontWeight.w400,
    fontSize: 34,
    height: 1.3,
    letterSpacing: 0.25,
  );

  static const TextStyle h4Dark = const TextStyle(
    color: DSColors.HeadingDark,
    fontSize: 34,
    fontFamily: _montserrat,
    fontWeight: FontWeight.w400,
    height: 1.3,
    letterSpacing: 0.25,
  );

  static const TextStyle h5Light = const TextStyle(
    color: DSColors.HeadingLight,
    fontFamily: _montserrat,
    fontSize: 24,
    fontWeight: FontWeight.w500,
    height: 1.3,
    letterSpacing: 0,
  );

  static const TextStyle h5Dark = const TextStyle(
    color: DSColors.HeadingDark,
    fontFamily: _montserrat,
    fontSize: 24,
    fontWeight: FontWeight.w500,
    height: 1.3,
    letterSpacing: 0,
  );

  static const TextStyle h6Light = const TextStyle(
    color: DSColors.HeadingLight,
    fontFamily: _montserrat,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 1.3,
    letterSpacing: 0.15,
  );

  static const TextStyle h6Dark = const TextStyle(
    color: DSColors.HeadingDark,
    fontFamily: _montserrat,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 1.3,
    letterSpacing: 0.15,
  );

  static const TextStyle subtitle1Light = const TextStyle(
    color: DSColors.HeadingLight,
    fontFamily: _montserrat,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.5,
    letterSpacing: 0.15,
  );

  static const TextStyle subtitle1Dark = const TextStyle(
    color: DSColors.HeadingDark,
    fontFamily: _montserrat,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.5,
    letterSpacing: 0.15,
  );

  static const TextStyle subtitle2Light = const TextStyle(
    color: DSColors.HeadingLight,
    fontFamily: _montserrat,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.5,
    letterSpacing: 0.1,
  );

  static const TextStyle subtitle2Dark = const TextStyle(
    color: DSColors.HeadingDark,
    fontFamily: _montserrat,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.5,
    letterSpacing: 0.1,
  );

  static const TextStyle body1Light = const TextStyle(
    color: DSColors.BodyLight,
    fontFamily: _roboto_slab,
    fontSize: 16,
    fontWeight: FontWeight.w300,
    height: 1.7,
    letterSpacing: 0.5,
  );

  static const TextStyle body1Dark = const TextStyle(
    color: DSColors.BodyDark,
    fontFamily: _roboto_slab,
    fontSize: 16,
    fontWeight: FontWeight.w300,
    height: 1.7,
    letterSpacing: 0.5,
  );

  static const TextStyle body2Light = const TextStyle(
    color: DSColors.BodyLight,
    fontFamily: _roboto_slab,
    fontSize: 14,
    fontWeight: FontWeight.w300,
    height: 1.7,
    letterSpacing: 0.25,
  );

  static const TextStyle body2Dark = const TextStyle(
    color: DSColors.BodyDark,
    fontFamily: _roboto_slab,
    fontSize: 14,
    fontWeight: FontWeight.w300,
    height: 1.7,
    letterSpacing: 0.25,
  );

  static const TextStyle buttonLight = const TextStyle(
    color: DSColors.BodyLight,
    fontFamily: _montserrat,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: 1,
    letterSpacing: 1.25,
  );

  static const TextStyle buttonDark = const TextStyle(
    color: DSColors.BodyDark,
    fontFamily: _montserrat,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: 1,
    letterSpacing: 1.25,
  );

  static const TextStyle captionLight = const TextStyle(
    color: DSColors.BodyLight,
    fontFamily: _roboto_slab,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.7,
    letterSpacing: 0.4,
  );

  static const TextStyle captionDark = const TextStyle(
    color: DSColors.BodyDark,
    fontFamily: _roboto_slab,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.7,
    letterSpacing: 0.4,
  );

  static const TextStyle overlineLight = const TextStyle(
    color: DSColors.BodyLight,
    fontFamily: _roboto_slab,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.7,
    letterSpacing: 1.5,
  );

  static const TextStyle overlineDark = const TextStyle(
    color: DSColors.BodyDark,
    fontFamily: _roboto_slab,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.7,
    letterSpacing: 1.5,
  );
}

class DSSpacing {
  static const double xxs = 2;
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 16;
  static const double lg = 32;
  static const double xl = 64;
  static const double xxl = 128;
}

class DSShadows {
  static const buttonCard = const BoxShadow(
    color: Colors.black26,
    blurRadius: 2,
    offset: Offset(0, 2),
  );

  static const buttonCardHover = const BoxShadow(
    color: Colors.black26,
    blurRadius: 4,
    offset: Offset(0, 4),
  );

  static const drawer = const BoxShadow(
    color: Colors.black26,
    blurRadius: 8,
    offset: Offset(0, 8),
  );

  static const modal = const BoxShadow(
    color: Colors.black26,
    blurRadius: 8,
    offset: Offset(0, 8),
  );
}
