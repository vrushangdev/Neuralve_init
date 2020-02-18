import 'package:flutter/material.dart';
import 'dart:math' as math;
class TimerPainter extends CustomPainter{
  var animation;
  var backgroundColor;
  var color;

  TimerPainter({
    this.animation,
    this.backgroundColor,
    this.color,
  }) : super(repaint:animation);
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint paint = Paint()
        ..color = Colors.black
        ..strokeWidth = 8.0
        ..style = PaintingStyle.stroke;
    canvas.drawCircle(size.center(Offset.zero), size.width/2.0, paint);
    paint.color = color;
    double progress = (1.0 - animation.value)*2*math.pi;
    canvas.drawArc(Offset.zero &size , math.pi *1.5, -progress, false, paint);
  }

  @override
  bool shouldRepaint(TimerPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return animation.value != oldDelegate.animation || BlendMode.color != oldDelegate.color;
    return null;
  }

}