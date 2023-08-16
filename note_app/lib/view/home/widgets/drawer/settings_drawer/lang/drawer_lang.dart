part of '../../../../../../utils/import/import.dart';

class DrawerLang extends StatefulWidget {
  const DrawerLang({super.key});

  @override
  State<DrawerLang> createState() => _DrawerLangState();
}

class _DrawerLangState extends State<DrawerLang> {
  @override
  void initState() {
    super.initState();
// check lang before build ui
    Future.delayed(Duration.zero, (() {
      // provider lang
      final ControllerLang pLang =
          Provider.of<ControllerLang>(context, listen: false);
      pLang.checkLang(context);
    }));
  }

  @override
  Widget build(BuildContext context) {
    // provider lang

    final ControllerLang pLang = Provider.of<ControllerLang>(context);
    return Padding(
      padding: EdgeInsets.all(AppDime.md.r),
      child: DropdownButton<ChoiceLang>(
        value: pLang.lang,
        items: [
          DropdownMenuItem(
              value: ChoiceLang.en, child: Text(ChoiceLang.en.nameLang).tr()),
          DropdownMenuItem(
              value: ChoiceLang.ar, child: Text(ChoiceLang.ar.nameLang).tr())
        ],
        onChanged: (value) {
          pLang.changeLang(context, value ?? ChoiceLang.en);
        },
      ),
    );
  }
}
