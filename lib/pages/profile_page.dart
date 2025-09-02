import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Color mainCol = Color.fromARGB(244, 23, 44, 63);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: mainCol,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            const Text(
              "ddimadiii",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text("Kelas: X PPLG 1", style: TextStyle(fontSize: 18)),
            const Text("Absen: 18", style: TextStyle(fontSize: 18)),
            const Text("Jurusan : PPLG", style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
