import 'dart:ui';
import 'package:flutter/material.dart';

class CustomRangeShape extends RangeSliderThumbShape {
  static const double _thumbSize = 10.0;
  String? startValue;
  String? endValue;
  CustomRangeShape(this.startValue, this.endValue);
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(_thumbSize);
  }

  final int min = 1;
  final int max = 10;

// PaintingContext context,
//     Offset center, {
//     required Animation<double> activationAnimation,
//     required Animation<double> enableAnimation,
//     bool isDiscrete,
//     bool isEnabled,
//     bool isOnTop,
//     TextDirection textDirection,
//     required SliderThemeData sliderTheme,
//     Thumb thumb,
//     bool isPressed,
  getStartValue() {
    return startValue;
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    bool? isDiscrete,
    bool? isEnabled,
    bool? isOnTop,
    TextDirection? textDirection,
    required SliderThemeData sliderTheme,
    Thumb? thumb,
    bool? isPressed,
  }) {
    final Canvas canvas = context.canvas;
    final paint = Paint()
      ..color = Colors.black //Thumb Background Color
      ..style = PaintingStyle.fill;
    Path? thumbPath;

    switch (textDirection) {
      case TextDirection.ltr:
        switch (thumb) {
          case Thumb.start:
            TextSpan spanStart = new TextSpan(
              style: new TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: sliderTheme?.thumbColor, //Text Color of Value on Thumb
              ),
              text: getStartValue(),
            );
            TextSpan spanend = new TextSpan(
              style: new TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: sliderTheme?.thumbColor, //Text Color of Value on Thumb
              ),
              text: endValue,
            );

            TextPainter tp = new TextPainter(
                text: spanStart,
                textAlign: TextAlign.end,
                textDirection: TextDirection.ltr);
            tp.layout();
            Offset textCenter = Offset(center.dx - (tp.width / 2), 50);
            thumbPath = _rightShape(_thumbSize, center);
            canvas.drawCircle(center, 12, paint);
            tp.paint(canvas, textCenter);
            break;
          case Thumb.end:
            TextSpan spanend = new TextSpan(
              style: new TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: sliderTheme?.thumbColor, //Text Color of Value on Thumb
              ),
              text: endValue,
            );

            TextPainter tp = new TextPainter(
                text: spanend,
                textAlign: TextAlign.end,
                textDirection: TextDirection.ltr);
            tp.layout();
            Offset textCenter = Offset(center.dx - (tp.width / 2), 50);
            thumbPath = _leftShape(_thumbSize, center);
            canvas.drawCircle(center, 12, paint);
            tp.paint(canvas, textCenter);
            break;
        }
        break;
      case TextDirection.ltr:
        switch (thumb) {
          case Thumb.start:
            thumbPath = _leftShape(_thumbSize, center);
            break;
          case Thumb.end:
            thumbPath = _rightShape(_thumbSize, center);
            break;
        }
        break;
      case TextDirection.rtl:
        thumbPath = _leftShape(_thumbSize, center);
        break;
    }
    // canvas.drawPath(thumbPath!, Paint()..color = Colors.blue);
  }
}

// String getValue(int value) {
//   return (min + (max - min) * value).round().toString();
// }

Path _rightShape(double size, Offset thumbCenter, {bool invert = false}) {
  final Path thumbPath = Path();
  final double halfSize = size / 1.5;
  final double sign = invert ? -1.0 : 1.0;
  thumbPath.moveTo(thumbCenter.dx + halfSize * sign, thumbCenter.dy);
  thumbPath.lineTo(thumbCenter.dx - halfSize * sign, thumbCenter.dy - size);
  thumbPath.lineTo(thumbCenter.dx - halfSize * sign, thumbCenter.dy + size);
  thumbPath.close();
  return thumbPath;
}

Path _leftShape(double size, Offset thumbCenter) =>
    _rightShape(size, thumbCenter, invert: true);
