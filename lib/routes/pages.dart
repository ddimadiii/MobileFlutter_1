import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:mobileflutter_1/pages/calculator_page.dart';
import 'package:mobileflutter_1/pages/footbal_page.dart';
import 'package:mobileflutter_1/pages/football_edit_page.dart';
import 'package:mobileflutter_1/pages/initial_page.dart';
import 'package:mobileflutter_1/pages/profile_page.dart';
import 'package:mobileflutter_1/routes/routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: Routes.calculator, page: () => CalculatorPage()),
    GetPage(name: Routes.footballplayers, page: () => FootballPage()),
    GetPage(name: Routes.footballeditplayers, page: () => FootballEditPage()),
    GetPage(name: Routes.profile, page: () => ProfilePage()),
    GetPage(name: Routes.initial, page: () => InitialPage()),
  ];
}
