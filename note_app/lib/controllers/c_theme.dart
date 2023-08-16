part of "../utils/import/import.dart";

class ControllerTheme extends ChangeNotifier {
  // Widget UI Swithc
  bool theme = false;
  String nameTheme = ApplangKey.light;

  /// Change Ui Switch
  void onchange(bool value) {
    theme = value;
    // Storage Value in Device True or False
    changeLocaleTheme(value);
    // Change Name Theme Ligth or Dark
    changeNameTheme();
    notifyListeners();
  }

  // Change Theme Dark or light for applection
  ThemeMode get themeMode => theme ? ThemeMode.dark : ThemeMode.light;

  // check theme store in device
  void checkThemeDevice() async {
    theme = await getLocaleTheme;
    // Change Name Theme Ligth or Dark
    changeNameTheme();
    div.log("check theme");
    notifyListeners();
  }

  // method Change Name Theme Ligth or Dark
  void changeNameTheme() {
    nameTheme = theme ? ApplangKey.dark : ApplangKey.light;
  }

  // * Shared Preferences
  final String keyTheme = "KEYTHEME";

  //  * write in Shared Preferences
  Future<void> changeLocaleTheme(bool value) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool(keyTheme, value);
  }

  // * read in Shared Preferences
  Future<bool> get getLocaleTheme async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool(keyTheme) ?? AppTheme.brightnessDevise();
  }
}
