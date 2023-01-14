import 'package:flutter/material.dart';

class Mytextformfield extends StatefulWidget {
  const Mytextformfield({required controller, super.key});

  @override
  State<Mytextformfield> createState() => _MytextformfieldState();
}

class _MytextformfieldState extends State<Mytextformfield> {
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(
        enabledBorder: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(),
      ),
    );
  }
}
