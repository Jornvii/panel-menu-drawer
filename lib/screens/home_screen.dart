import 'package:flutter/material.dart';

import '../widgets/right_drawer.dart';
import 'classroom.dart';
import 'email.dart';
import 'facebook.dart';
import 'help.dart';
import 'logout.dart';
import 'messager.dart';
import 'noti.dart';
import 'profile.dart';
import 'setting.dart';
import 'telegram.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  String _activeScreen = 'Home';

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
  }

  void _toggleDrawer() {
    if (_controller.isDismissed) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  void _navigateTo(String screen) {
    setState(() {
      _activeScreen = screen;
      _controller.reverse();
    });

    Widget page;

    switch (screen) {
      case 'Telegram':
        page = const TelegramScreen();
        break;
      case 'Facebook':
        page = const FacebookScreen();
        break;
      case 'Messenger':
        page = const MessengerScreen();
        break;
      case 'Email':
        page = const EmailScreen();
        break;
      case 'Classroom':
        page = const ClassroomScreen();
        break;
      case 'Home':
        page = const HomeScreen();
        break;
      case 'Settings':
        page = const SettingsScreen();
        break;
      case 'Notifications':
        page = const NotificationsScreen();
        break;
      case 'Profile':
        page = const ProfileScreen();
        break;
      case 'Help':
        page = const HelpScreen();
        break;
      case 'Logout':
        page = const LogoutScreen();
        break;
      default:
        page = const HomeScreen();
    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Samsung Panel Drawer Menu'),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: Text('Active Screen: $_activeScreen'),
          ),
          RightDrawer(
            animationController: _controller,
            onMenuItemTap: _navigateTo,
            activeScreen: _activeScreen,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleDrawer,
        backgroundColor: Colors.orange,
        child: const Icon(Icons.menu),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
