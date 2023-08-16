part of '../utils/import/import.dart';

enum ChoiceLang {
  en(ApplangKey.english),
  ar(ApplangKey.arabic);

  final String nameLang;
  const ChoiceLang(this.nameLang);
}

class ControllerLang extends ChangeNotifier {
  // UI Widget
  ChoiceLang? lang;
  void checkLang(BuildContext context) {
    lang = AppLang.currentLang(context) == enk ? ChoiceLang.en : ChoiceLang.ar;
    notifyListeners();
  }

  // change lang
  void changeLang(BuildContext context, ChoiceLang lang) {
    if (lang != this.lang) {
      this.lang = lang;
      context.setLocale(lang == ChoiceLang.en
          ? AppLangConfig.enLocale
          : AppLangConfig.arLocale);
      AppRestart.reBulid(context);
    } else {
      AppToast.toast(ApplangKey.chosenLang.tr(),
          color: AppTheme.isDark(context)
              ? AppColors.darkTab
              : AppColors.lightTab);
    }
  }
}
