import 'package:flutter/material.dart';
import './FilterModel.dart';

class CustomDropdown extends StatefulWidget {
  CustomDropdown({
    Key? key,
    required this.dropdownList,
    required this.updateselectedItem,
  }) : super(key: key);
  DropDownModel? dropdownValue;
  List<DropDownModel> dropdownList;
  dropDownCallback updateselectedItem;

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

typedef dropDownCallback = void Function(DropDownModel updateselectedItem);

class _CustomDropdownState extends State<CustomDropdown> {
  onchanged() {}
  @override
  Widget build(BuildContext context) {
    return FormField(
      builder: (FormFieldState state) {
        return InputDecorator(
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              labelText: "hintText",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
            ),
            isEmpty: false,
            child: DropdownButtonHideUnderline(
                child: DropdownButton<DropDownModel>(
              hint: new Text("Select a user"),
              value: widget.dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (DropDownModel? newValue) {
                setState(() {
                  widget.dropdownValue = newValue!;

                  widget.updateselectedItem(newValue);
                });
              },
              items: widget.dropdownList.map((DropDownModel user) {
                return DropdownMenuItem<DropDownModel>(
                  value: user,
                  child: Text(
                    user.value,
                    style: TextStyle(color: Colors.black),
                  ),
                );
              }).toList(),
            )));
      },
    );
  }
}
