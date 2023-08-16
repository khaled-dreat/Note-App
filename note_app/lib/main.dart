import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'utils/import/import.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
      supportedLocales: AppLangConfig.supportLocale,
      path: AppLangConfig.path,
      fallbackLocale: AppLangConfig.enLocale,
      child: AppRestart(
          child: MultiProvider(
              providers: providersList, child: const MyAppNote()))));
}

// list of providers

List<SingleChildWidget> providersList = [
  // Theme
  ChangeNotifierProvider(create: (_) => ControllerTheme()),
  // Lang
  ChangeNotifierProvider(create: (_) => ControllerLang())
];
