part of "../import/import.dart";

String ark = "ar";
String enk = "en";

class AppLangConfig {
  static String path = 'assets/lang';
  static Locale enLocale = const Locale('en');
  static Locale arLocale = const Locale('ar');
  static List<Locale> supportLocale = [enLocale, arLocale];
}
