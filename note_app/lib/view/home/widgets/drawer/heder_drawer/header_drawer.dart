part of '../../../../../utils/import/import.dart';

class DrawerHeader extends StatelessWidget {
  const DrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SafeArea(
      bottom: false,
      child: Container(
        child: Row(children: [
          AppDime.sm.horizontalSpace,
          const Expanded(child: ProfileImg()),
          AppDime.lg.horizontalSpace,
          Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(ApplangKey.nameUser.tr()),
                  AppDime.md.verticalSpace,
                  const Text("شركة دولسيت")
                ],
              ))
        ]),
      ),
    ));
  }
}
