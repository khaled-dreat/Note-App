part of '../import/import.dart';

class AppThemeChoose {
  static String? enFont = GoogleFonts.aBeeZee().fontFamily;
  static String? arFont = GoogleFonts.cairo().fontFamily;

  static String? fontFamile(BuildContext context) =>
      AppLang.currentLang(context) == ark ? arFont : enFont;

  static ThemeData light(BuildContext context) {
    return ThemeData.light().copyWith(
/***************AppBar Theme */
        appBarTheme: AppBarTheme(
            backgroundColor: AppColors.bgWhite,
            foregroundColor: AppColors.bgBlack,
            elevation: 10,
            centerTitle: true,
            titleTextStyle: Theme.of(context).textTheme.headline6),

//***************Card Them */
        cardTheme: CardTheme(
            elevation: 5,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppDime.lg.r))),
        //****************text theme */
        textTheme: Theme.of(context).textTheme.apply(
            displayColor: AppColors.bgBlack,
            bodyColor: AppColors.bgBlack,
            fontFamily: fontFamile(context)),

        ///****************tab bar theme */
        tabBarTheme: TabBarTheme(labelColor: AppColors.bgBlack));
  }

  static ThemeData dark(BuildContext context) {
    return ThemeData.dark().copyWith(
/***************AppBar Theme */
        appBarTheme: AppBarTheme(
            foregroundColor: AppColors.bgWhite,
            elevation: 10,
            centerTitle: true,
            titleTextStyle: Theme.of(context).textTheme.headline5),
//***************Card Them */
        cardTheme: CardTheme(
            elevation: 5,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppDime.lg.r))),
        //****************text theme */

        textTheme: Theme.of(context).textTheme.apply(
            displayColor: AppColors.bgWhite,
            bodyColor: AppColors.bgWhite,
            fontFamily: fontFamile(context)),

        ///****************tab bar theme */
        tabBarTheme: TabBarTheme(labelColor: AppColors.bgWhite));
  }
}
