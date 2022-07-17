import 'package:flutter/material.dart';

class CustomBoxList extends StatefulWidget {
  const CustomBoxList({Key? key}) : super(key: key);

  @override
  State<CustomBoxList> createState() => _CustomBoxListState();
}

class _CustomBoxListState extends State<CustomBoxList> {
  getWidget() {
    for (int i = 0; i < 10; i++) {
      Container(
        // margin: const EdgeInsets.only(
        //     left: 20.0, right: 20.0),
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.amberAccent,
            border: Border.all(color: Colors.blueAccent)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Center(child: Text("Apple")),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(direction: Axis.horizontal, children: [
      Row(
        children: [
          Container(
            // margin: const EdgeInsets.only(
            //     left: 20.0, right: 20.0),
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.amberAccent,
                border: Border.all(color: Colors.blueAccent)),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Center(child: Text("Apple")),
            ),
          ),
          Container(
            // margin: const EdgeInsets.only(
            //     left: 20.0, right: 20.0),
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.amberAccent,
                border: Border.all(color: Colors.blueAccent)),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Center(child: Text("Apple")),
            ),
          ),
          Container(
            // margin: const EdgeInsets.only(
            //     left: 20.0, right: 20.0),
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.amberAccent,
                border: Border.all(color: Colors.blueAccent)),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Center(child: Text("Apple")),
            ),
          ),
          Container(
            // margin: const EdgeInsets.only(
            //     left: 20.0, right: 20.0),
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.amberAccent,
                border: Border.all(color: Colors.blueAccent)),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Center(child: Text("Apple")),
            ),
          ),
          Container(
            // margin: const EdgeInsets.only(
            //     left: 20.0, right: 20.0),
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.amberAccent,
                border: Border.all(color: Colors.blueAccent)),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Center(child: Text("Apple")),
            ),
          ),
          Container(
            // margin: const EdgeInsets.only(
            //     left: 20.0, right: 20.0),
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.amberAccent,
                border: Border.all(color: Colors.blueAccent)),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Center(child: Text("Apple")),
            ),
          ),
          Container(
            // margin: const EdgeInsets.only(
            //     left: 20.0, right: 20.0),
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.amberAccent,
                border: Border.all(color: Colors.blueAccent)),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Center(child: Text("Apple")),
            ),
          ),
          Container(
            // margin: const EdgeInsets.only(
            //     left: 20.0, right: 20.0),
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.amberAccent,
                border: Border.all(color: Colors.blueAccent)),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Center(child: Text("Apple")),
            ),
          ),
        ],
      ),
      Container(
        // margin: const EdgeInsets.only(
        //     left: 20.0, right: 20.0),
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.amberAccent,
            border: Border.all(color: Colors.blueAccent)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Center(child: Text("Apple")),
        ),
      ),
      Container(
        // margin: const EdgeInsets.only(
        //     left: 20.0, right: 20.0),
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.amberAccent,
            border: Border.all(color: Colors.blueAccent)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Center(child: Text("Apple")),
        ),
      ),
      Container(
        // margin: const EdgeInsets.only(
        //     left: 20.0, right: 20.0),
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.amberAccent,
            border: Border.all(color: Colors.blueAccent)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Center(child: Text("Apple")),
        ),
      ),
      Container(
        // margin: const EdgeInsets.only(
        //     left: 20.0, right: 20.0),
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.amberAccent,
            border: Border.all(color: Colors.blueAccent)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Center(child: Text("Apple")),
        ),
      ),
      Container(
        // margin: const EdgeInsets.only(
        //     left: 20.0, right: 20.0),
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.amberAccent,
            border: Border.all(color: Colors.blueAccent)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Center(child: Text("Apple")),
        ),
      ),
      Container(
        // margin: const EdgeInsets.only(
        //     left: 20.0, right: 20.0),
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.amberAccent,
            border: Border.all(color: Colors.blueAccent)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Center(child: Text("Apple")),
        ),
      ),
      Container(
        // margin: const EdgeInsets.only(
        //     left: 20.0, right: 20.0),
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.amberAccent,
            border: Border.all(color: Colors.blueAccent)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Center(child: Text("Apple")),
        ),
      ),
      Container(
        // margin: const EdgeInsets.only(
        //     left: 20.0, right: 20.0),
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.amberAccent,
            border: Border.all(color: Colors.blueAccent)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Center(child: Text("Apple")),
        ),
      ),
    ]);
  }
}
