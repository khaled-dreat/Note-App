part of '../../utils/import/import.dart';

class PageSplash extends StatefulWidget {
  static const String nameRoute = "PageSplash";
  const PageSplash({super.key});

  @override
  State<PageSplash> createState() => _PageSplashState();
}

class _PageSplashState extends State<PageSplash> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 10),
      () {
        AppRoute.goToNamRem(context, LogInPage.nameRoute);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    AppImages.splashImageSvg,
                    height: 250,
                    width: 250,
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                Text(
                  "النجار",
                  style: GoogleFonts.cairo(color: Colors.orange, fontSize: 40),
                ),
                Text(
                  " الاداة الجديدة في تنظيم العمل بشكل سلس",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.cairo(fontSize: 30),
                )
              ],
            )),
      ),
    );
  }
}
