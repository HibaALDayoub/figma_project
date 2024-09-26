import 'package:figma_proj/modules/login/binding/login_binding.dart';
import 'package:figma_proj/modules/signup/view/pages/sign_up_page.dart';
import 'package:get/get.dart';

import '../../modules/login/view/pages/login_page.dart';
import '../../modules/onboarding/binding/onboarding_binding.dart';
import '../../modules/onboarding/view/pages/onboarding_pade.dart';
import '../../modules/phone_number/binding/phone_number_binding.dart';
import '../../modules/phone_number/view/pages/phone_number_page.dart';
import '../../modules/pin_code/binding/pin_code_binding.dart';
import '../../modules/pin_code/view/pages/pin_code_page.dart';
import '../../modules/profile/binding/profile_binding.dart';
import '../../modules/profile/view/pages/profile_page.dart';
import '../../modules/security_quastion/binding/question_binding.dart';
import '../../modules/security_quastion/view/pages/question_page.dart';
import '../../modules/signup/binding/sign_up_binding.dart';
import '../../modules/splash/binding/splash_binding.dart';
import '../../modules/splash/view/pages/splash_page.dart';
import '../constant/app_routes.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: AppRoutes.splashRoute,
      page: () => const SplashPage(),
      transition: Transition.fade,
      binding: SplashBinding(),
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoutes.onBoardingRoute,
      page: () => const OnBoardingPage(),
      transition: Transition.fade,
      binding: OnBoardingBinding(),
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoutes.signUpRoute,
      page: () => SignUpPage(),
      transition: Transition.fade,
      binding: SignUpBinding(),
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoutes.logInRoute,
      page: () => LoginPage(),
      transition: Transition.fade,
      binding: LogInBinding(),
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoutes.profileRoute,
      page: () => ProfilePage(),
      transition: Transition.fade,
      binding: ProfileBinding(),
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoutes.phoneNumberRoute,
      page: () => PhoneNumberPage(),
      transition: Transition.fade,
      binding: PhoneNumberBinding(),
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoutes.questionRoute,
      page: () => QuestionPage(),
      transition: Transition.fade,
      binding: QuestionBinding(),
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoutes.pinPage,
      page: () => PinCodePage(),
      transition: Transition.fade,
      binding: PinCodeBinding(),
      transitionDuration: const Duration(milliseconds: 700)),
];
