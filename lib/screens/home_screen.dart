import 'package:flutter/material.dart';

import '../widgets/right_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Samsung Panel Drawer Menu'),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          const Center(
            child: Text('Content goes here'),
          ),
          RightDrawer(animationController: _controller),
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
