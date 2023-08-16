part of '../import/import.dart';

class AppRestart extends StatefulWidget {
  const AppRestart({super.key, required this.child});
  final Widget child;
  static void reBulid(BuildContext context) =>
      context.findAncestorStateOfType<_AppRestartState>()?.reStartKey();
  @override
  State<AppRestart> createState() => _AppRestartState();
}

class _AppRestartState extends State<AppRestart> {
  Key key = UniqueKey();
  void reStartKey() {
    key = UniqueKey();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child,
    );
  }
}
