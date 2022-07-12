import 'package:flutter/foundation.dart';

class FilterLisModel {
  List<dynamic>? filters;
}

class FilterModel {
  FilerType? type;
  List? elements;
}

enum FilerType {
  rangeBar,
  seekBar,
  checkBox,
  dropDown,
  singleOption,
  multipleOption
}

List filer = [
  {
    "id": "1",
    "type": "dropdown",
    "elements": [
      {"value": "A", "id": "1"},
      {"value": "B", "id": "2"},
      {"value": "C", "id": "3"},
    ]
  },
  {
    "id": "2",
    "type": "rangebar",
    "start": "17",
    "end": "56",
  },
  {
    "id": "3",
    "type": "checkbox",
    "elements": [
      {"value": "India", "id": "1"},
      {"value": "Australia", "id": "2"},
      {"value": "England", "id": "3"},
      {"value": "Srilanka", "id": "4"},
    ]
  },
  {
    "id": "4",
    "type": "dropdown",
    "elements": [
      {"value": "Outer", "id": "1"},
      {"value": "Inner", "id": "2"},
      {"value": "Center", "id": "3"},
    ]
  },
  {
    "id": "5",
    "type": "checkbox",
    "elements": [
      {"value": "Icecream", "id": "1"},
      {"value": "Sandwich", "id": "2"},
      {"value": "Pizza", "id": "3"},
      {"value": "Burger", "id": "4"},
    ]
  },
];

class DropDownModel {
  String value;
  String id;

  DropDownModel({
    required this.value,
    required this.id,
  });

  factory DropDownModel.fromJson(Map<String, dynamic> json) =>
      new DropDownModel(
        value: json["value"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "value": value,
      };
}

class SelectedFilterModel {
  String? id;
  Map? selectedElement;
  List? selectedElements;

  SelectedFilterModel({this.id, this.selectedElement, this.selectedElements});

  Map<String, dynamic> toJson() => {
        "id": id,
        "selected_element": selectedElement,
        "selected_elements": selectedElements,
      };
}
