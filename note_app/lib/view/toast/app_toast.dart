part of "../../utils/import/import.dart";

class AppToast {
  static toast(String msg, {Color color = Colors.red}) {
    return Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        // timeInSecForIosWeb: 1,
        backgroundColor: color,
        textColor: Colors.white,
        fontSize: AppDime.lg.sm);
  }
}