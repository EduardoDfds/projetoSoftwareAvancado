import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Mascara extends StatelessWidget {
  const Mascara({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text(
        '   💬    ',
        style: TextStyle(fontSize: 50),
      )
          .animate(onPlay: ((controller) => controller.repeat()))
          .moveY(
              begin: -25, end: 15, curve: Curves.easeInOut, duration: 1000.ms)
          .then()
        ..moveY(
            begin: 15, end: -25, curve: Curves.easeInOut, duration: 1000.ms),
    );
  }
}
