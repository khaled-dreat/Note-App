part of '../../../../../../utils/import/import.dart';

class DrawerSettingSwitch extends StatelessWidget {
  const DrawerSettingSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    // get provider theme
    ControllerTheme pTheme = Provider.of<ControllerTheme>(context);
    return Switch(value: pTheme.theme, onChanged: pTheme.onchange);
  }
}
