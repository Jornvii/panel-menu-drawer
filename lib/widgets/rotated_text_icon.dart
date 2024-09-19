import 'package:flutter/material.dart';

class RotatedTextIcon extends StatelessWidget {
  final IconData iconData;
  final String label;

  const RotatedTextIcon({super.key, required this.iconData, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(iconData, color: Colors.white),
            iconSize: 40,
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Clicked $label')));
            },
          ),
          RotatedBox(
            quarterTurns: 1, 
            child: Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
