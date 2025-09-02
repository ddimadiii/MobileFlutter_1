import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobileflutter_1/controllers/calculator_controller.dart';
import 'package:mobileflutter_1/widgets/custom_button.dart';
import 'package:mobileflutter_1/widgets/custom_textfield.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final CalculatorController calculatorController = Get.put(
    CalculatorController(),
  );

  @override
  Widget build(BuildContext context) {
    final Color mainCol = Color.fromARGB(244, 23, 44, 63);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kalkulator", style: TextStyle(color: Colors.white)),
        backgroundColor: mainCol,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: CustomTextfield(
                txtController: calculatorController.txtAngka1,
                label: 'Angka Pertama',
                obscureText: false,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: CustomTextfield(
                txtController: calculatorController.txtAngka2,
                label: 'Angka Kedua',
                obscureText: false,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Obx(
                () => Text(
                  "Hasil : " + calculatorController.hasil.value,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  label: '+',
                  conHeight: 50,
                  conWidth: 60,
                  backColor: mainCol,
                  onPressed: () {
                    calculatorController.tambah();
                  },
                ),
                CustomButton(
                  label: '-',
                  conHeight: 50,
                  conWidth: 60,
                  backColor: mainCol,
                  onPressed: () {
                    calculatorController.kurang();
                  },
                ),
                CustomButton(
                  label: '×',
                  conHeight: 50,
                  conWidth: 60,
                  backColor: mainCol,
                  onPressed: () {
                    calculatorController.kali();
                  },
                ),
                CustomButton(
                  label: '÷',
                  conHeight: 50,
                  conWidth: 60,
                  backColor: mainCol,
                  onPressed: () {
                    calculatorController.bagi();
                  },
                ),
              ],
            ),

            const SizedBox(height: 16),
            CustomButton(
              label: 'Clear',
              conHeight: 50,
              conWidth: 100,
              backColor: Color.fromARGB(255, 177, 65, 54),
              onPressed: () {
                calculatorController.clear();
              },
            ),
          ],
        ),
      ),
    );
  }
}
