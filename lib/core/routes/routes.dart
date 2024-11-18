import 'package:figma_proj/modules/login/binding/login_binding.dart';
import 'package:figma_proj/modules/select_bank/view/select_bank_pade.dart';
import 'package:figma_proj/modules/signup/view/pages/sign_up_page.dart';
import 'package:get/get.dart';

import '../../modules/exchange_rate/binding/exchange_rate_binding.dart';
import '../../modules/exchange_rate/view/exchange_rate_page.dart';

import '../../modules/login/view/pages/login_page.dart';
import '../../modules/main/binding/main_binding.dart';
import '../../modules/main/view/page/main_page.dart';
import '../../modules/money_transfer/binding/money_transfer_binding.dart';
import '../../modules/money_transfer/view/money_transfer_page.dart';
import '../../modules/my_wallet/binding/my_wallet_binding.dart';
import '../../modules/my_wallet/view/my_wallet_page.dart';
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
import '../../modules/select_bank/binding/select_bank_binding.dart';
import '../../modules/select_card/binding/select_card_binding.dart';
import '../../modules/select_card/view/select_card_page.dart';
import '../../modules/setting_profile/binding/setting_binding.dart';
import '../../modules/setting_profile/view/setting_profile_page.dart';
import '../../modules/signup/binding/sign_up_binding.dart';
import '../../modules/splash/binding/splash_binding.dart';
import '../../modules/splash/view/pages/splash_page.dart';
import '../../modules/statistics/binding/statistic_binding.dart';
import '../../modules/statistics/view/statistic_page.dart';
import '../../modules/transfer/binding/transfer_binding.dart';
import '../../modules/transfer/view/transfer_page.dart';
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
      page: () => const ProfilePage(),
      transition: Transition.fade,
      binding: ProfileBinding(),
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoutes.phoneNumberRoute,
      page: () => const PhoneNumberPage(),
      transition: Transition.fade,
      binding: PhoneNumberBinding(),
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoutes.questionRoute,
      page: () => const QuestionPage(),
      transition: Transition.fade,
      binding: QuestionBinding(),
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoutes.pinPage,
      page: () => const PinCodePage(),
      transition: Transition.fade,
      binding: PinCodeBinding(),
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoutes.mainRoute,
      page: () => const MainPage(),
      transition: Transition.fade,
      binding: MainBinding(),
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoutes.exchangeRateRoute,
      page: () => const ExchangeRatePage(),
      transition: Transition.fade,
      binding: ExchangeRateBinding(),
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoutes.myWalletRoute,
      page: () => MyWalletPage(),
      transition: Transition.fade,
      binding: MyWalletBinding(),
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoutes.moneyTransferRoute,
      page: () => MoneyTransferPage(),
      transition: Transition.fade,
      binding: MoneyTransferBinding(),
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoutes.statisticsRoute,
      page: () => const StatisticsPage(),
      transition: Transition.fade,
      binding: StatisticBinding(),
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoutes.transferRoute,
      page: () => TransferPage(),
      transition: Transition.fade,
      binding: TransferBinding(),
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoutes.settingRoute,
      page: () => SettingProfilePage(),
      transition: Transition.fade,
      binding: SettingBinding(),
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoutes.selectCardRoute,
      page: () => SelectCardPage(),
      transition: Transition.fade,
      binding: SelectCardBinding(),
      transitionDuration: const Duration(milliseconds: 700)),
  GetPage(
      name: AppRoutes.selectBank,
      page: () => SelectBankPage(),
      transition: Transition.fade,
      binding: SelectBankBinding(),
      transitionDuration: const Duration(milliseconds: 700)),
];
