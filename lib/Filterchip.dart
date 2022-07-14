import 'package:flutter/material.dart';

class CustomsChipsModel {
  CustomsChipsModel(this.name, this.id, this.isSelected);
  final String name;
  bool isSelected = false;
  final String id;
}

typedef selectedChipsCallBack = void Function(
    List<CustomsChipsModel> updatedChips);

class CustomChips extends StatefulWidget {
  CustomChips(
      {Key? key,
      this.selectedColor,
      this.unselectedColor,
      this.borderColor,
      required this.updatedChips,
      required this.chipList})
      : super(key: key);

  Color? selectedColor = const Color(0xffcbc3e3);
  Color? unselectedColor = Colors.grey;

  Color? borderColor = const Color(0xffcbc3e3);
  selectedChipsCallBack updatedChips;
  List<CustomsChipsModel> chipList;

  @override
  State createState() => CustomChipsState();
}

class CustomChipsState extends State<CustomChips> {
  updateList(CustomsChipsModel actor) {
    // actor.isSelected =
    //     actor.isSelected ? actor.isSelected : !actor.isSelected,
    if (actor.isSelected) {
      // for (int i = 0; i < widget.chipList.length; i++)
      //   widget.chipList[i].isSelected =
      //       !widget.chipList[i].isSelected
    } else {
      int index = widget.chipList.indexWhere((element) => element.isSelected);

      if (index > -1) {
        widget.chipList[index].isSelected = false;
      }
    }

    actor.isSelected = !actor.isSelected;

    // {widget.chipList.map((e) => actor.isSelected = !e.isSelected)},

    widget.updatedChips(widget.chipList);
    setState(() {});
  }

  Iterable<Widget> get actorWidgets {
    return widget.chipList.map((CustomsChipsModel actor) {
      return Padding(
          padding: const EdgeInsets.all(4.0),
          child: InkWell(
            onTap: () => {
              print(actor.name),
              updateList(actor),
            },
            child: Transform(
              transform: new Matrix4.identity()..scale(0.9),
              child: Chip(
                backgroundColor: actor.isSelected
                    ? widget.selectedColor
                    : widget.unselectedColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side:
                        BorderSide(color: widget.borderColor ?? Colors.black)),
                label: Text(
                  actor.name,
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Align(
          alignment: Alignment.topLeft,
          child: Wrap(
            children: actorWidgets.toList(),
          ),
        ),
      ],
    );
  }
}
