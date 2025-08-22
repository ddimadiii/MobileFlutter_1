import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});
  final label = 'button';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        margin: EdgeInsets.all(3),
        child: ElevatedButton(
          onPressed: null,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          ),
          child: Text(
            label,
            style: TextStyle(fontSize: 16, color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
