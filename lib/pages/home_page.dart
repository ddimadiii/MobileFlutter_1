import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobileflutter_1/widgets/custom_button.dart';
import 'package:mobileflutter_1/widgets/custom_textfield.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 0.obs;
  TextEditingController txtcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Color mainCol = Color.fromARGB(244, 23, 44, 63);
    return Obx(
      () => Scaffold(
        appBar: AppBar(title: Text("Flutter Mobile", style: TextStyle(color: Colors.white))),
        body: Column(
          children: [
            Obx(() => Text("Count: ${count.value}")), // pakai variabel obs
            ElevatedButton(
              onPressed: () => count.value++, // update variabel
              child: Text("Tambah"),
            ),
            CustomButton(
              label: "Player List",
              conHeight: 50,
              conWidth: 400,
              backColor: mainCol,
              onPressed: null,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: SizedBox(
                width: 400,
                child: CustomTextfield(
                  txtController: txtcontroller,
                  label: 'hiii',
                  obscureText: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
