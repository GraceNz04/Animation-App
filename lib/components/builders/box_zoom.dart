import 'package:flutter/material.dart';

class BoxZoom extends StatefulWidget {
  const BoxZoom({super.key});

  @override
  State<BoxZoom> createState() => _BoxZoomState();
}

class _BoxZoomState extends State<BoxZoom>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Container(
            width: 200 * _animation.value,
            height: 200 * _animation.value,
            color: Colors.red,
          );
        },
    );
  }
}
