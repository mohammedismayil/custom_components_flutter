import 'package:flutter/material.dart';

class ChecklistModel {
  String title = "";
  bool isSelected = false;

  Map<String, dynamic> toJson() => {
        "title": title,
        "isSelected": isSelected,
      };

  ChecklistModel(this.isSelected, this.title);
}

typedef checkListCallBack = void Function(
    List<ChecklistModel> updatedCheckList);

class CustomCheckBoxes extends StatefulWidget {
  CustomCheckBoxes({
    Key? key,
    required this.checklist,
    required this.updateCheckList,
  }) : super(key: key);

  List<ChecklistModel> checklist;
  checkListCallBack updateCheckList;

  @override
  State<CustomCheckBoxes> createState() => _CustomCheckBoxesState();
}

class _CustomCheckBoxesState extends State<CustomCheckBoxes> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: widget.checklist.length,
        itemBuilder: (BuildContext context, int index) {
          return CheckboxListTile(
            title: Text(widget.checklist[index].title),
            onChanged: (bool? value) {
              setState(() {
                widget.checklist[index].isSelected = value ?? true;
                widget.updateCheckList(widget.checklist);
              });
            },
            secondary: const Icon(Icons.hourglass_empty),
            value: widget.checklist[index].isSelected,
          );
        });
  }
}
