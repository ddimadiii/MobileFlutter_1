import 'package:get/get.dart';
import 'package:mobileflutter_1/models/football_model.dart';

class FootballController extends GetxController {
  var players = <FootballModel>[
    FootballModel(
      profileImage: "assets/profile.png",
      name: "Bruno Fernandes",
      position: "Midfielder",
      number: 8,
    ),
    FootballModel(
      profileImage: "assets/profile.png",
      name: "Marcus Rashford",
      position: "Forward",
      number: 10,
    ),
    FootballModel(
      profileImage: "assets/profile.png",
      name: "Casemiro",
      position: "Midfielder",
      number: 18,
    ),
    FootballModel(
      profileImage: "assets/profile.png",
      name: "Lisandro Martínez",
      position: "Defender",
      number: 6,
    ),
    FootballModel(
      profileImage: "assets/profile.png",
      name: "André Onana",
      position: "Goalkeeper",
      number: 24,
    ),
  ].obs;

  void updatePlayer(int index, FootballModel updatedPlayer) {
    players[index] = updatedPlayer;
  }
}
