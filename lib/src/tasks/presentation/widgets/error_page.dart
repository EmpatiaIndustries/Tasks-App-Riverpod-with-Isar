import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  final Object message;

  const ErrorPage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error, size: 100, color: Colors.red),
          const SizedBox(height: 20),
          const Text('Error', style: TextStyle(fontSize: 30)),
          const SizedBox(height: 5),
          Text('$message', style: const TextStyle(fontSize: 20)),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
