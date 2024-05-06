import 'package:flutter/material.dart';

class HelperScreen extends StatelessWidget {
  const HelperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const Text(
              'Nosotros somos',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/images/imagotipo.png',
              width: deviceWidth * 0.5,
            ),
            const SizedBox(height: 20),
            const Text(
              'Y estamos aquí para ayudarte',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.send),
              label: const Text('Enviar un ticket'),
            ),
          ],
        ),
      ),
    );
  }
}
