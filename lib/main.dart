import 'package:flutter/material.dart';
import 'package:mobileflutter_1/pages/home_page.dart';
import 'package:get/get.dart';
import 'package:mobileflutter_1/routes/pages.dart';
import 'package:mobileflutter_1/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final Color mainCol = Color.fromARGB(244, 23, 44, 63);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: mainCol)),
      initialRoute: Routes.initial,
      getPages: AppPages.pages,
    );
  }
}
