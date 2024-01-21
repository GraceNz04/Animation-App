
import 'package:flutter/material.dart';
import 'dart:math';


class FlippingBox extends StatefulWidget {
  const FlippingBox({super.key});

  @override
  State<FlippingBox> createState() => _FlippingBoxState();
}

class _FlippingBoxState extends State<FlippingBox> with SingleTickerProviderStateMixin{
//a controller is used to change the state of ui or widget based on some conditions
//here, it takes values between 0.0 and 1.0 and hence could be associated to animation to take more
  late AnimationController _controller;
  late Animation<double> _animation;


  @override
  void initState(){
    super.initState();
    _controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2)
    );
    //animations are objects connected to controllers and takes tween objects which simply refers to values between a start and end value
    _animation=Tween<double>(begin:0.0,end:2*pi).animate(_controller);

    _controller.repeat();
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 4, mainAxisSpacing: 5),
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (context,child){
              return  Transform(
                  alignment: Alignment.centerLeft,
                  transform: Matrix4.identity()..rotateZ(_animation.value),
                  child: const ContainerObject()
              );
            },
          ),
          AnimatedBuilder(
            animation: _controller,
            builder: (context,child){
              return  Transform(
                  alignment: Alignment.topCenter,
                  transform: Matrix4.identity()..rotateY(_animation.value),
                  child: const ContainerObject()
              );
            },
          ),
          AnimatedBuilder(
            animation: _controller,
            builder: (context,child){
              return  Transform(
                  alignment: Alignment.topRight,
                  transform: Matrix4.identity()..rotateZ(_animation.value),
                  child: const ContainerObject()
              );
            },
          ),
          AnimatedBuilder(
            animation: _controller,
            builder: (context,child){
              return  Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()..rotateX(_animation.value),
                  child: const ContainerObject()
              );
            },
          ),
          AnimatedBuilder(
            animation: _controller,
            builder: (context,child){
              return  Transform(
                  alignment: Alignment.topRight,
                  transform: Matrix4.identity()..rotateX(_animation.value),
                  child: const ContainerObject()
              );
            },
          ),
          AnimatedBuilder(
            animation: _controller,
            builder: (context,child){
              return  Transform(
                  alignment: Alignment.bottomCenter,
                  transform: Matrix4.identity()..rotateZ(_animation.value),
                  child: const ContainerObject()
              );
            },
          ),
        ],
      ),
    );
  }
}

class ContainerObject extends StatelessWidget {
  const ContainerObject({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:100,
      height:100,
      decoration: BoxDecoration(
          color: Colors.greenAccent,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3)
            )
          ]
      ),
      child: const Center(
        child: Text("AnimApp"),
      ),
    );
  }
}