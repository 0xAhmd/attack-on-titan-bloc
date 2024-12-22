import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

Widget characterDescription(String title, String description) {
  return AnimatedTextKit(
    animatedTexts: [
      TypewriterAnimatedText(
        description,
        textStyle: const TextStyle(
          color: Colors.white,
          fontSize: 27,
        ),
        speed: const Duration(milliseconds: 50),
      ),
    ],
    repeatForever: false,
  );
}