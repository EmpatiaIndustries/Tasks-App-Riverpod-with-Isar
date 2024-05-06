import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tasks_app/config/config.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(size: 30),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: InkWell(
            onTap: () => context.push(const HelperRoute().location),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset('assets/isotipo.png'),
            ),
          ),
        )
      ],
    );
  }
}
