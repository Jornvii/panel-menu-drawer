import 'package:flutter/material.dart';

import 'rotated_text_icon.dart';

class RightDrawer extends StatelessWidget {
  final AnimationController animationController;

  const RightDrawer({super.key, required this.animationController});

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
              children: const [
                RotatedTextIcon(iconData: Icons.telegram, label: "Telegram"),
                RotatedTextIcon(iconData: Icons.facebook, label: "Facebook"),
                RotatedTextIcon(iconData: Icons.messenger, label: "Messenger"),
                RotatedTextIcon(iconData: Icons.email, label: "Email"),
                RotatedTextIcon(iconData: Icons.class_, label: "Classroom"),
                RotatedTextIcon(iconData: Icons.home, label: "Home"),
                RotatedTextIcon(iconData: Icons.settings, label: "Settings"),
                RotatedTextIcon(iconData: Icons.notifications, label: "Notifications"),
                RotatedTextIcon(iconData: Icons.person, label: "Profile"),
                RotatedTextIcon(iconData: Icons.help, label: "Help"),
                RotatedTextIcon(iconData: Icons.logout, label: "Logout"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
