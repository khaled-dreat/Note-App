part of '../import/import.dart';

class AppRoute {
  static Map<String, WidgetBuilder> ruote = {
    PageSplash.nameRoute: (context) => const PageSplash(),
    HomePage.nameRoute: (context) => const HomePage(),
    LogInPage.nameRoute: (context) => const LogInPage()
  };
  static String get inRoute => HomePage.nameRoute;
  // pushNamedAndRemoveUntil
  static void goToNamRem(BuildContext context, String route) {
    Navigator.pushNamedAndRemoveUntil(context, route, (route) => false);
  }

// pushReplacementNamed
  static void goToNam(BuildContext context, String route) {
    Navigator.pushReplacementNamed(context, route);
  }
}
