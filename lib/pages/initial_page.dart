import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobileflutter_1/controllers/initial_controller.dart';
import 'package:mobileflutter_1/pages/calculator_page.dart';
import 'package:mobileflutter_1/pages/footbal_page.dart';
import 'package:mobileflutter_1/pages/profile_page.dart';

class InitialPage extends StatelessWidget {
  InitialPage({super.key});

  final InitialController nav = Get.put(InitialController());

  final pages = [CalculatorPage(), FootballPage(), const ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: pages[nav.currentIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: nav.currentIndex.value,
          onTap: nav.changeTab,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.calculate, size: 25),
              label: 'Kalkulator',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_soccer, size: 25),
              label: 'Football',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 25),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
