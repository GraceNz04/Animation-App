import 'package:flutter/material.dart';

class BoxSpinAnimation extends StatefulWidget {
  const BoxSpinAnimation({super.key});

  @override
  State<BoxSpinAnimation> createState() => _BoxSpinAnimationState();
}

class _BoxSpinAnimationState extends State<BoxSpinAnimation> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    );
    _animation = CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOut,
    );
    _controller.forward();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Spin Box"),
      ),
      body: Center(
        child: RotationTransition(
          turns: _animation,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}
