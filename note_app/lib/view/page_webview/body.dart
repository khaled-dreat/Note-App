part of '../../utils/import/import.dart';

class PageWebView extends StatelessWidget {
  const PageWebView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: WebViewController()),
    );
  }
}
