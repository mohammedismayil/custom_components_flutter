import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSingleOptionSwitch extends StatefulWidget {
  CustomSingleOptionSwitch(
      {Key? key,
      required this.isEnabled,
      this.questionTitle,
      required this.onSwitchChanged})
      : super(key: key);

  bool? isEnabled;

  String? questionTitle;

  final SwitchCallBack onSwitchChanged;

  @override
  State<CustomSingleOptionSwitch> createState() =>
      _CustomSingleOptionSwitchState();
}

typedef SwitchCallBack = void Function(bool selectedStatus);

class _CustomSingleOptionSwitchState extends State<CustomSingleOptionSwitch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(widget.questionTitle ?? ""),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Yes"),
              Transform.scale(
                scale: 0.8,
                child: CupertinoSwitch(
                  value: widget.isEnabled!,
                  onChanged: (bool value) {
                    setState(() {
                      widget.isEnabled = value;
                      widget.onSwitchChanged(value);
                    });
                  },
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("No"),
              Transform.scale(
                scale: 0.8,
                child: CupertinoSwitch(
                  value: !widget.isEnabled!,
                  onChanged: (bool value) {
                    setState(() {
                      widget.isEnabled = !value;
                      widget.onSwitchChanged(!value);
                    });
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
