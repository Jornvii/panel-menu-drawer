import 'package:flutter/material.dart';

import 'rotated_text_icon.dart';

class RightDrawer extends StatelessWidget {
  final AnimationController animationController;
  final void Function(String) onMenuItemTap;
  final String activeScreen;

  const RightDrawer({
    super.key,
    required this.animationController,
    required this.onMenuItemTap,
    required this.activeScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(1, 0),
          end: const Offset(0, 0),
        ).animate(animationController),
        child: Container(
          width: 100,
          height: 600,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 24, 60, 122),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
          child: ScrollConfiguration(
            behavior: const ScrollBehavior().copyWith(overscroll: false),
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 20),
              children: [
                _buildMenuItem(Icons.telegram, "Telegram"),
                _buildMenuItem(Icons.facebook, "Facebook"),
                _buildMenuItem(Icons.messenger, "Messenger"),
                _buildMenuItem(Icons.email, "Email"),
                _buildMenuItem(Icons.class_, "Classroom"),
                _buildMenuItem(Icons.home, "Home"),
                _buildMenuItem(Icons.settings, "Settings"),
                _buildMenuItem(Icons.notifications, "Notifications"),
                _buildMenuItem(Icons.person, "Profile"),
                _buildMenuItem(Icons.help, "Help"),
                _buildMenuItem(Icons.logout, "Logout"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData iconData, String label) {
    return RotatedTextIcon(
      iconData: iconData,
      label: label,
      isActive: label == activeScreen, // Pass active state
      onTap: () => onMenuItemTap(label),
    );
  }
}
