import 'package:as_task_4_1/widgets/constants.dart';
import 'package:as_task_4_1/widgets/style.dart';
import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fullwidth = MediaQuery.of(context).size.width;
    final fullheight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("CardStackView"),
        actions: [
          PopupMenuButton(
              onSelected: choices,
              itemBuilder: (BuildContext context) {
                return Constants.choices.map((String choice) {
                  return PopupMenuItem(
                    child: Text(choice),
                    value: choice,
                  );
                }).toList();
              })
        ],
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              SetCard(topValue: 16, setcolor: Colors.red, val: 0),
              SetCard(topValue: 150, setcolor: Colors.purple, val: 1),
              SetCard(topValue: 300, setcolor: Colors.pink, val: 2),
              SetCard(topValue: 450, setcolor: Colors.green, val: 3),
              SetCard(topValue: 600, setcolor: Colors.yellow, val: 4),
              SetCard(topValue: 750, setcolor: Colors.blue, val: 5),
              SetCard(topValue: 900, setcolor: Colors.orange, val: 6),
              SetCard(topValue: 1050, setcolor: Colors.teal, val: 7),
            ],
          ),
        ],
      ),
    );
  }
}

class SetCard extends StatelessWidget {
  final int topValue, val;
  final Color setcolor;
  const SetCard(
      {Key? key,
      required this.topValue,
      required this.setcolor,
      required this.val})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: topValue.toDouble()),
      color: setcolor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
      ),
      child: Container(
        child: StylingText(
          val: val,
        ),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.3,
      ),
    );
  }
}

void choices(String choice) {}
