part of '../../../../../utils/import/import.dart';

class DrawerSettingDesign extends StatelessWidget {
  const DrawerSettingDesign(
      {super.key,
      required this.title,
      this.trailing,
      this.onTap,
      required this.icon});
  final String title;
  final Widget? trailing;
  final SvgPicture icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title).tr(),
      trailing: trailing,
      leading: icon,
      onTap: onTap,
    );
  }
}
