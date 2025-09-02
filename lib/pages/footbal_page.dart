import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobileflutter_1/controllers/football_controller.dart';
import 'package:mobileflutter_1/models/football_model.dart';
import 'package:mobileflutter_1/routes/routes.dart';

class FootballPage extends StatelessWidget {
  FootballPage({super.key});

  final FootballController footballController = Get.put(FootballController());

  @override
  Widget build(BuildContext context) {
    final Color mainCol = Color.fromARGB(244, 23, 44, 63);
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Football Player", style: TextStyle(color: Colors.white)),
        backgroundColor: mainCol,
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: footballController.players.length,
            itemBuilder: (context, index) {
              FootballModel player = footballController.players[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(player.profileImage),
                ),
                title: Text(player.name),
                subtitle: Text("${player.position}. ${player.number}"),
                onTap: () {
                  Get.toNamed(
                    Routes.footballeditplayers,
                    arguments: {'index': index, 'player': player},
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
