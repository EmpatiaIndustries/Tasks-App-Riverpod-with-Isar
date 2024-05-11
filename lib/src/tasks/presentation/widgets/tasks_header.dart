import 'package:flutter/material.dart';

class TasksHeader extends StatelessWidget {
  const TasksHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'App Tareas',
                    style: TextStyle(
                      fontSize: deviceWidth * 0.064,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Tareas de hoy',
                    style: TextStyle(fontSize: deviceWidth * 0.05),
                  ),
                ],
              ),
              const Spacer(),
            ],
          )
        ],
      ),
    );
  }
}
