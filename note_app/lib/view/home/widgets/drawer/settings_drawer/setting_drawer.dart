part of '../../../../../utils/import/import.dart';

class DrawerSettings extends StatelessWidget {
  const DrawerSettings({super.key});

  @override
  Widget build(BuildContext context) {
    ControllerTheme pTheme = Provider.of<ControllerTheme>(context);
    return Expanded(
        flex: 5,
        child: Column(
          children: [
            DrawerSettingDesign(
              title: ApplangKey.language,
              icon: AppSvg.lang,
              trailing: DrawerLang(),
            ),
            DrawerSettingDesign(
              title: pTheme.nameTheme,
              icon: AppSvg.theme,
              trailing: const DrawerSettingSwitch(),
            ),
            DrawerSettingDesign(
              title: ApplangKey.terms,
              icon: AppSvg.terms,
            ),
            DrawerSettingDesign(
              title: ApplangKey.logout,
              icon: AppSvg.logout,
              onTap: () {
                AppDialog.logout(context);
              },
            )
          ],
        ));
  }
}
