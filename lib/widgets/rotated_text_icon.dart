import 'package:flutter/material.dart';

class RotatedTextIcon extends StatelessWidget {
  final IconData iconData;
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const RotatedTextIcon({
    super.key,
    required this.iconData,
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(iconData, color: isActive ? Colors.yellow : Colors.white),
            iconSize: 40,
            onPressed: onTap,
          ),
          RotatedBox(
            quarterTurns: 1,
            child: Text(
              label,
              style: TextStyle(
                color: isActive ? Colors.yellow : Colors.white,
                fontSize: 14,
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
