import 'package:flutter/material.dart';

import '../components/builders/box_zoom.dart';

class BoxZoomAnimation extends StatefulWidget {
  const BoxZoomAnimation({super.key});

  @override
  State<BoxZoomAnimation> createState() => _BoxZoomAnimationState();
}

class _BoxZoomAnimationState extends State<BoxZoomAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Box Zoom"),
      ),
      body: const Center(
        child: BoxZoom(),
      ),
    );
  }
}
