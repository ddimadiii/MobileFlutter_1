import 'package:flutter/material.dart';
import 'package:mobileflutter_1/widgets/custom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello world")),
      body: Container(child: CustomButton()),
    );
  }
}
