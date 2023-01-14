import 'package:flutter/material.dart';

class Mybutton extends StatefulWidget {
  Mybutton({required String text, required List<String> list, super.key}) {
    value = text;
    values = list;
  }
  late String value;
  List<String> values = [];
  @override
  State<Mybutton> createState() => _MybuttonState();
}

class _MybuttonState extends State<Mybutton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
      ),
      onPressed: () {
        setState(() {
          widget.values.add(widget.value);
        });
      },
      child: const Icon(Icons.add),
    );
  }
}
