import 'package:flutter/material.dart';

class TelegramScreen extends StatelessWidget {
  const TelegramScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Telegram'),
      ),
      body: const Center(
        child: Text('Telegram Screen'),
      ),
    );
  }
}
