part of '../../../../utils/import/import.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        title: Text(ApplangKey.appName.tr()),
        bottom: TabBar(indicatorSize: TabBarIndicatorSize.label, tabs: [
          Tab(
            text: ApplangKey.homeTab.tr(),
            icon: const Icon(Icons.home),
          ),
          Tab(
            text: ApplangKey.socialMediaTab,
            icon: Icon(Icons.add),
          )
        ]),
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(AppBar().preferredSize.height + kTextTabBarHeight);
}
