import 'dart:async';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note_app/utils/lang/app_langkey.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

//! ************* As and Show ************** */
import 'dart:developer' as div;
import 'dart:io' show Platform;

import 'package:webview_flutter/webview_flutter.dart';

//************* App Note ************** */
part '../../app_note/app_start.dart';

//************* Controlloers ************** */
part "../../controllers/c_theme.dart";
part '../../controllers/c_lang.dart';

//************* Utils ************** */
part '../constant/app_images.dart';
part '../lang/app_lang_config.dart';
part '../lang/app_lang.dart';
part '../theme/app_color.dart';
part '../theme/app_theme_choose.dart';
part '../theme/app_theme.dart';
part "../route/app_route.dart";
part "../dime/app_dime.dart";
part "../constant/app_icons.dart";
part "../svg/app_svg.dart";
part '../restart/app_restart.dart';

//************* View ************** */
part '../../view/home/body.dart';
part '../../view/splash/body.dart';
part '../../view/login/login.dart';
part "../../view/page_webview/body.dart";

//? ************** Widges *************
part '../../view/home/widgets/appbar/home.appbar.dart';
part '../../view/home/widgets/drawer/drawer_body.dart';
part '../../view/home/widgets/drawer/heder_drawer/header_drawer.dart';
part '../../view/home/widgets/drawer/settings_drawer/setting_drawer.dart';
part "../../view/widgets/images/profile_img.dart";
part "../../view/home/widgets/drawer/settings_drawer/drawer_setting_design.dart";
part "../../view/login/widget/input_decoration.dart";
part "../../view/widgets/dialog/app_dialog.dart";
part "../../view/home/widgets/drawer/settings_drawer/theme/drawer_setting_switch.dart";
part "../../view/home/widgets/drawer/settings_drawer/lang/drawer_lang.dart";
part "../../view/toast/app_toast.dart";
