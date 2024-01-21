import 'package:animapp/components/builders/box_fading.dart';
import 'package:flutter/material.dart';

class BoxAnimation extends StatefulWidget {
  const BoxAnimation ({super.key});

  @override
  State<BoxAnimation > createState() => _BoxAnimationState();
}

class _BoxAnimationState extends State<BoxAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Page"),
      ),
      body: const Center(
        child: BoxFading(),
      ),
    );
  }
}
