import 'dart:math';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'greetings_provider.g.dart';

@riverpod
Stream<String> greetings(GreetingsRef ref) async* {
  final greetings = [
    'Tanto tiempo',
    '¿Qué cuentas?',
    'Espero estés muy bien',
    '¿Qué hay de nuevo?',
    '¿Cómo has estado?',
    '¿Qué has hecho?',
    '¿Cómo te ayudamos?',
    '¿Qué tal todo?',
  ];
  final random = Random();
  while (true) {
    await Future.delayed(const Duration(seconds: 4));
    yield greetings[random.nextInt(greetings.length)];
  }
}

@riverpod
String getTimeGreeting(GetTimeGreetingRef ref) {
  final currentHour = DateTime.now().hour;
  if (currentHour < 12) return 'Buenos días';
  if (currentHour < 18) return 'Buenas tardes';
  return 'Buenas noches';
}

// @riverpod
// Future<bool> animationController(AnimationControllerRef ref) async {
//   bool value;
//   while (true) {
//     await Future.delayed(const Duration(seconds: 2));
//     value = !value;
//     return value;
//   }
// }

@riverpod
class AnimationController extends _$AnimationController {
  @override
  bool build() {
    change();
    return true;
  }

  @override
  void change() async {
    while (true) {
      await Future.delayed(const Duration(seconds: 2));
      state = !state;
    }
  }
}

// @riverpod
// String animationController(AnimationControllerRef ref) {
//     final animation = AnimationController(vsync: , duration: Duration(seconds: 3),);
//     final _fadeInFadeOut = Tween<double>(begin: 0.0, end: 0.5).animate(animation);

//     animation.addStatusListener((status){
//       if(status == AnimationStatus.completed){
//         animation.reverse();
//       }
//       else if(status == AnimationStatus.dismissed){
//         animation.forward();
//       }
//     });
//     animation.forward();

//   return '';
// }
