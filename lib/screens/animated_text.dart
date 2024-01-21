import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';




const colorizeColors =[
  Colors.greenAccent,
  Colors.redAccent,
  Colors.blue,
  Colors.yellowAccent
];
const colorizeTextStyle = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold
);

class TypeWriter extends StatefulWidget {
  const TypeWriter({super.key});

  @override
  State<TypeWriter> createState() => _TypeWriterState();
}

class _TypeWriterState extends State<TypeWriter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: typeWriterAnimation(),
      ),
    );
  }
  Widget typeWriterAnimation()=>Center(
    child: AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText(
          'Animation app!\n'
              'Hope you are enjoying it!',
          textStyle: const TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
          speed: const Duration(milliseconds: 100),
        ),
      ],
      totalRepeatCount: 2,
      pause: const Duration(seconds: 1),
      displayFullTextOnTap: true,
      stopPauseOnTap: true,
    ),
  );
}

class WavyAnimation extends StatefulWidget {
  const WavyAnimation({super.key});

  @override
  State<WavyAnimation> createState() => _WavyAnimationState();
}

class _WavyAnimationState extends State<WavyAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: wavyAnimation(),
      ),
    );;
  }
  Widget wavyAnimation()=>Center(
    child: AnimatedTextKit(
      animatedTexts: [
        WavyAnimatedText(
            "ANIMATION APP",
            textStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 25
            )
        ),
      ],
      totalRepeatCount: 3,
      pause: const Duration(seconds: 1),
      displayFullTextOnTap: true,
      stopPauseOnTap: true,
    ),
  );
}

class ColorizeAnimation extends StatefulWidget {
  const ColorizeAnimation({super.key});

  @override
  State<ColorizeAnimation> createState() => _ColorizeAnimationState();
}

class _ColorizeAnimationState extends State<ColorizeAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: colorizeAnimation(),
      ),
    );;
  }
  Widget colorizeAnimation()=>Center(
    child: AnimatedTextKit(
      animatedTexts: [
        ColorizeAnimatedText("HERE WE GO",
          textStyle: colorizeTextStyle,
          colors: colorizeColors,
        ),
        ColorizeAnimatedText("HOPE YOU ENJOY",
          textStyle: colorizeTextStyle,
          colors: colorizeColors,
        ),
      ],
      totalRepeatCount: 3,
      pause: const Duration(seconds: 1),
      displayFullTextOnTap: true,
      stopPauseOnTap: true,
    ),
  );
}
