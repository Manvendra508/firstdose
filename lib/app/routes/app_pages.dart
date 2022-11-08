import 'package:get/get.dart';

import '../modules/authentication/login/bindings/login_binding.dart';
import '../modules/authentication/login/views/login_view.dart';
import '../modules/authentication/otpscreen/bindings/otpscreen_binding.dart';
import '../modules/authentication/otpscreen/views/otpscreen_view.dart';
import '../modules/intro/introscreen/bindings/introscreen_binding.dart';
import '../modules/intro/introscreen/views/introscreen_view.dart';
import '../modules/mainscreen/home/bindings/home_binding.dart';
import '../modules/mainscreen/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.INTROSCREEN,
      page: () => IntroscreenView(),
      binding: IntroscreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.OTPSCREEN,
      page: () => OtpscreenView(),
      binding: OtpscreenBinding(),
    ),
  ];
}
