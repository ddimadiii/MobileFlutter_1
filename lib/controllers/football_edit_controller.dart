import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:mobileflutter_1/controllers/football_controller.dart';
import 'package:mobileflutter_1/models/football_model.dart';

class FootballEditController extends GetxController {
  final txtName = TextEditingController();
  final txtPosition = TextEditingController();
  final txtNumber = TextEditingController();

  void setData(FootballModel player) {
    txtName.text = player.name;
    txtPosition.text = player.position;
    txtNumber.text = player.number.toString();
  }

  void saveData(int index) {
    final controller = Get.find<FootballController>();
    controller.players[index] = FootballModel(
      profileImage: 'assets/profiile.png',
      name: txtName.text,
      position: txtPosition.text,
      number: int.tryParse(txtNumber.text) ?? 0,
    );

    Get.back();
    Get.snackbar(
      "success",
      "Player updated successfully",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
