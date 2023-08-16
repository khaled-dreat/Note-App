part of '../../utils/import/import.dart';

class HomePage extends StatelessWidget {
  static const String nameRoute = "HomePage";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const HomeAppBar(),
        drawer: const DrawerBody(),
        body: Container(
          color: Colors.deepPurple,
          width: double.infinity,
          height: double.infinity,
          child: const Center(
            child: Text(
              "Coming Soon",
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
