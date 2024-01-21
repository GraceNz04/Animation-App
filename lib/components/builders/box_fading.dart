import 'package:flutter/material.dart';

class BoxFading extends StatefulWidget {
  const BoxFading({super.key});

  @override
  State<BoxFading> createState() => _BoxFadingWidgetState();
}

class _BoxFadingWidgetState extends State<BoxFading> with SingleTickerProviderStateMixin {
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
        builder: (context, child){
          return Opacity(
            opacity: _animation.value,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
          );
        }
    );
  }
}
