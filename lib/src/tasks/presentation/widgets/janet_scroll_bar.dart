import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tasks_app/config/config.dart';
import 'package:text_scroll/text_scroll.dart';

class JanetScrollBar extends ConsumerWidget {
  const JanetScrollBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Color selectedColor = ref.watch(selectedColorProvider);
    return FadeInUp(
      duration: const Duration(milliseconds: 1500),
      from: 100,
      child: Container(
        color: selectedColor,
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: const TextScroll(
          'Una vez leí un cuentito que decía que el amor es como una mariposa, mientras más lo persigues, más se aleja, pero si te quedas quieto, puede que se pose sobre ti.',
          velocity: Velocity(pixelsPerSecond: Offset(42, 0)),
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
