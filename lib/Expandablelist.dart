import 'package:custom_components_flutter/CustomExpansionTile.dart';
import 'package:flutter/material.dart';

class ExpandableList extends StatefulWidget {
  ExpandableList({Key? key, this.childWidgets, this.titleOfList})
      : super(key: key);

  Widget? childWidgets;

  String? titleOfList;

  @override
  State<ExpandableList> createState() => _ExpandableListState();
}

class _ExpandableListState extends State<ExpandableList> {
  bool _customTileExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CustomExpansionTile(
          sectionTitle: widget.titleOfList ?? "",
          initiallyExpanded: false,
          collapsedIconColor: Colors.black,

          iconColor: Colors.black,
          tilePadding: EdgeInsets.all(5),
          title: Text(
            widget.titleOfList ?? "",
            style: TextStyle(
                height: 1,
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          textColor: Colors.black,
          collapsedTextColor: Colors.black,
          // subtitle: Text('Trailing expansion arrow icon'),
          children: <Widget>[widget.childWidgets!],
        ),
      ],
    );
  }
}
