part of '../import/import.dart';

class AppTheme {
  // * headline1
  static TextStyle? h1(BuildContext context) =>
      Theme.of(context).textTheme.headline1;
  // * headline2
  static TextStyle? h2(BuildContext context) =>
      Theme.of(context).textTheme.headline2;
  // * headline3
  static TextStyle? h3(BuildContext context) =>
      Theme.of(context).textTheme.headline3;
  // * headline4
  static TextStyle? h4(BuildContext context) =>
      Theme.of(context).textTheme.headline4;
  // * headline5
  static TextStyle? h5(BuildContext context) =>
      Theme.of(context).textTheme.headline5;
  // * headline6
  static TextStyle? h6(BuildContext context) =>
      Theme.of(context).textTheme.headline6;
  // * bodyText1
  static TextStyle? b1(BuildContext context) =>
      Theme.of(context).textTheme.bodyText1;
  // * bodyText2
  static TextStyle? b2(BuildContext context) =>
      Theme.of(context).textTheme.bodyText2;
  // * subtitle1
  static TextStyle? s1(BuildContext context) =>
      Theme.of(context).textTheme.subtitle1;
  // * subtitle2
  static TextStyle? s2(BuildContext context) =>
      Theme.of(context).textTheme.subtitle2;
  // * caption
  static TextStyle? caption(BuildContext context) =>
      Theme.of(context).textTheme.caption;
  // * button
  static TextStyle? btn(BuildContext context) =>
      Theme.of(context).textTheme.button;

// check theme dark or ligth for applection
  static bool isDark(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark;

  // check theme is dark or ligth for Devise
  static bool brightnessDevise() {
    Brightness brightness = SchedulerBinding.instance.window.platformBrightness;
    return brightness == Brightness.dark;
  }

// return text dark or ligth
  static String themText(BuildContext context) =>
      isDark(context) ? ApplangKey.dark : ApplangKey.light;

  // returen color depend  on theme
  static Color themeColor(BuildContext context) =>
      isDark(context) ? AppColors.darkMode : AppColors.lightMode;
}
