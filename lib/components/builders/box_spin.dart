import 'package:flutter/material.dart';

class BoxSpin extends StatefulWidget {
  const BoxSpin({super.key});

  @override
  State<BoxSpin> createState() => _BoxSpinState();
}

class _BoxSpinState extends State<BoxSpin> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
      vsync: this,
  )..repeat();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child){
          return Transform.rotate(
            angle: _controller.value * 2.0 * 22.7,
            child: child,
          );
        },
    );
  }
}
