import 'package:flutter/material.dart';
class ClockPainter extends CustomPainter{
   @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint or drawing
    final paint = Paint();
    paint.color = Colors.black;
    var center = Offset(size.width/2,size.height/2);

     canvas.drawCircle(center, 100.0, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }

}