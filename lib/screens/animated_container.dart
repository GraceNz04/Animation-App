import 'package:flutter/material.dart';
import 'dart:math';

double randomBorderRadius() {
  return Random().nextDouble() * 100;
}

double randomMargin() {
  return Random().nextDouble() * 64;
}

Color randomColor() {
  return Color(0xFFFFFFFF & Random().nextInt(0xFFFFFFFF));
}

class AnimContainer extends StatefulWidget {
  const AnimContainer({super.key});

  @override
  State<AnimContainer> createState() => _AnimContainerState();
}

class _AnimContainerState extends State<AnimContainer>
    with SingleTickerProviderStateMixin {
  late Color color;
  late double borderRadius;
  late double margin;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    color = randomColor();
    borderRadius = randomBorderRadius();
    margin = randomMargin();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _animation = Tween<double>(begin: 0.0, end: 2 * pi).animate(_controller);

    _controller.repeat();
  }

  void change() {
    setState(() {
      color = randomColor();
      borderRadius = randomBorderRadius();
      margin = randomMargin();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()..rotateZ(_animation.value),
                  child: Container(
                      margin: EdgeInsets.all(randomMargin()),
                      width: 128,
                      height: 128,
                      decoration: BoxDecoration(
                          color: randomColor(),
                          borderRadius:
                              BorderRadius.circular(randomBorderRadius())),
                      child: InkWell(
                        onTap: dispose,
                        child: const Center(child: Text("hello world")),
                      )),
                );
              },
            )),
            const Padding(
                padding: EdgeInsets.only(top: 80, left: 50, right: 50)),
          ],
        ));
  }
}
