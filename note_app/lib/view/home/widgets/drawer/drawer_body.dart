part of '../../../../utils/import/import.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: const [
        DrawerHeader(),
        Divider(
          thickness: 2,
        ),
        DrawerSettings(),
      ]),
    );
  }
}
