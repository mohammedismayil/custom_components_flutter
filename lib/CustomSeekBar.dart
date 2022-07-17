import 'package:flutter/material.dart';

class CustomSeekBar extends StatefulWidget {
  CustomSeekBar({
    Key? key,
    required this.currentSliderValue,
    required this.endValue,
    required this.onRangeUpdate,
  }) : super(key: key);

  final SliderCallback onRangeUpdate;

  double currentSliderValue;
  double endValue;
  @override
  State<CustomSeekBar> createState() => _CustomSeekBarState();
}

typedef SliderCallback = void Function(double currentSliderValue);

class _CustomSeekBarState extends State<CustomSeekBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("How many shoes you have?"),
            Text(widget.currentSliderValue.toInt().toString())
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.white.withOpacity(1),
            inactiveTrackColor: Colors.white.withOpacity(.5),

            trackHeight: 4.0,
            thumbShape: CustomSliderThumbCircle(
              thumbRadius: 10 * .4,
              min: 1,
              max: 10,
            ),
            overlayColor: Colors.white.withOpacity(.4),
            //valueIndicatorColor: Colors.white,
            activeTickMarkColor: Colors.white,
            inactiveTickMarkColor: Colors.red.withOpacity(.7),
          ),
          child: Slider(
            value: widget.currentSliderValue,
            // divisions: 10,
            max: widget.endValue,
            label: widget.currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                widget.currentSliderValue = value;

                widget.onRangeUpdate(value);
              });
            },
          ),
        )
      ],
    );
  }
}

class CustomSliderThumbCircle extends SliderComponentShape {
  final double thumbRadius;
  final int min;
  final int max;

  const CustomSliderThumbCircle({
    required this.thumbRadius,
    this.min = 0,
    this.max = 10,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    Animation<double>? activationAnimation,
    Animation<double>? enableAnimation,
    bool? isDiscrete,
    TextPainter? labelPainter,
    RenderBox? parentBox,
    SliderThemeData? sliderTheme,
    TextDirection? textDirection,
    double? value,
    double? textScaleFactor,
    Size? sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    final paint = Paint()
      ..color = Colors.white //Thumb Background Color
      ..style = PaintingStyle.fill;

    TextSpan span = new TextSpan(
      style: new TextStyle(
        fontSize: thumbRadius * .8,
        fontWeight: FontWeight.w700,
        color: sliderTheme?.thumbColor, //Text Color of Value on Thumb
      ),
      text: getValue(value!),
    );

    TextPainter tp = new TextPainter(
        text: span,
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr);
    tp.layout();
    Offset textCenter =
        Offset(center.dx - (tp.width / 2), center.dy - (tp.height / 2));

    canvas.drawCircle(center, thumbRadius * .9, paint);
    tp.paint(canvas, textCenter);
  }

  String getValue(double value) {
    return (min + (max - min) * value).round().toString();
  }
}
