import 'package:flutter/material.dart';
import 'dart:math';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final boxDecoration = BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2, 0.8],
          colors: [
            // Color(0xff2E305F),
            // Color(0xff202333),
            Colors.white,
            Colors.indigo
          ])
      );
    return Stack(
      children: [
        //Purple Gradient
        Container(decoration: boxDecoration,),

        //Pink box
        //Positioned es como si fuera de manera relativa en HTML
        Positioned(
          top: -100,
          left: -30,
          child: _PinkBox()
          ),
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi /5,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(80),
          gradient: LinearGradient(
            colors: [
              // Color.fromRGBO(236, 98, 188, 1),
              // Color.fromRGBO(241, 142, 172, 1),
              Colors.amber,
              Colors.purple
            ])
        ),
      ),
    );
  }
}