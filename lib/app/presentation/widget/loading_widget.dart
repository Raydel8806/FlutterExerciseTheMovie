import 'dart:math' as math;

import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(child: Center(child: CustomLoadingIndicator())));
  }
}

class CustomLoadingIndicator extends StatefulWidget {
  final Color? color;

  CustomLoadingIndicator({this.color});

  @override
  _CustomLoadingIndicatorState createState() => _CustomLoadingIndicatorState();
}

class _CustomLoadingIndicatorState extends State<CustomLoadingIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _controller.addListener(() {
      setState(() {});
    });
    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: _controller.value * 2 * math.pi,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          border: Border.all(
            color: widget.color ?? Colors.white,
            width: 5,
          ),
          boxShadow: [
            BoxShadow(
              color: widget.color ?? Colors.white,
              blurRadius: 10,
              spreadRadius: -5,
            ),
          ],
          gradient: RadialGradient(
            colors: [
              Colors.transparent,
              widget.color ?? Colors.white,
            ],
            stops: [0.5, 1],
          ),
        ),
        child: Center(
          child: Icon(
            Icons.camera_outlined,
            size: 50,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
