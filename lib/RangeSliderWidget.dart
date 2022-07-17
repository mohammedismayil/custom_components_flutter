import 'package:custom_components_flutter/CustomRangeSliderShape.dart';
import 'package:flutter/material.dart';

class RangeSliderWidget extends StatefulWidget {
  const RangeSliderWidget(
      {Key? key,
      required this.onRangeUpdate,
      required this.endValue,
      required this.startValue})
      : super(
          key: key,
        );
  final SliderCallback onRangeUpdate;

  final double startValue;
  final double endValue;
  @override
  State<RangeSliderWidget> createState() => _RangeSliderWidgetState();
}

typedef SliderCallback = void Function(double startValue, double endValue);

class _RangeSliderWidgetState extends State<RangeSliderWidget> {
  @override
  void initState() {
    super.initState();
    _currentRangeValues = RangeValues(widget.startValue, widget.endValue);
  }

  RangeValues _currentRangeValues = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Year"),
            // Text("1970-2022"),
            Text(_currentRangeValues.start.toInt().toString() +
                (_currentRangeValues.end.toInt().toString())),
          ],
        ),
        SliderTheme(
          data: SliderThemeData(
            rangeThumbShape: CustomRangeShape(
                _currentRangeValues.start.toInt().toString(),
                _currentRangeValues.end.toInt().toString()),
            trackHeight: 2,
          ),
          child: RangeSlider(
            values: _currentRangeValues,
            min: widget.startValue,
            max: widget.endValue,
            // divisions: 52,
            // max: 52,
            // divisions: 5,
            activeColor: Colors.black,
            inactiveColor: Colors.redAccent,
            labels: RangeLabels(
              _currentRangeValues.start.round().toString(),
              _currentRangeValues.end.round().toString(),
            ),
            onChanged: (RangeValues values) {
              // print(values.end.toInt());
              // print(values.start.toInt());
              setState(() {
                _currentRangeValues = values;

                widget.onRangeUpdate(_currentRangeValues.start.toDouble(),
                    _currentRangeValues.end.toDouble());
              });
            },
          ),
        ),
      ],
    );
  }
}
