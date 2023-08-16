part of '../../../utils/import/import.dart';

class AppDialog {
  static void logout(BuildContext context) {
    AwesomeDialog(
            context: context,
            dialogType: DialogType.warning,
            animType: AnimType.bottomSlide,
            title: ApplangKey.logout.tr(),
            desc: ApplangKey.messageLogout.tr(),
            btnCancelOnPress: () {},
            btnCancelText: ApplangKey.exit.tr(),
            btnOkOnPress: () {},
            btnOkText: ApplangKey.cancel.tr(),
            dismissOnTouchOutside: false)
        .show();
  }
}
