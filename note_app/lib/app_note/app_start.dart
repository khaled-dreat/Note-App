part of "../utils/import/import.dart";

class MyAppNote extends StatefulWidget {
  const MyAppNote({super.key});

  @override
  State<MyAppNote> createState() => _MyAppNoteState();
}

class _MyAppNoteState extends State<MyAppNote> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    ControllerTheme pTheme =
        Provider.of<ControllerTheme>(context, listen: false);
    pTheme.checkThemeDevice();
  }

  @override
  Widget build(BuildContext context) {
    // get ptovider theme
    ControllerTheme pTheme = Provider.of<ControllerTheme>(context);
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        // Language
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: AppThemeChoose.light(context),
        darkTheme: AppThemeChoose.dark(context),
        themeMode: pTheme.themeMode,
        initialRoute: AppRoute.inRoute,
        routes: AppRoute.ruote,
      ),
    );
  }
}
