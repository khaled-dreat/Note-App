part of '../import/import.dart';

class AppSvg {
  static double xlg = (AppDime.xlg / AppDime.one_25); // 25

  static SvgPicture myApp = SvgPicture.asset(
    AppIcons.myApp,
    width: xlg.w,
    height: xlg.w,
  );
  static final SvgPicture lang = SvgPicture.asset(
    AppIcons.translate,
    width: xlg.w,
    height: xlg.w,
  );

  static final SvgPicture theme = SvgPicture.asset(
    AppIcons.theme,
    width: xlg.w,
    height: xlg.w,
  );

  static final SvgPicture terms = SvgPicture.asset(
    AppIcons.terms,
    width: xlg.w,
    height: xlg.w,
  );
  static final SvgPicture logout = SvgPicture.asset(
    AppIcons.logout,
    width: xlg.w,
    height: xlg.w,
  );
}
