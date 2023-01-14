import 'package:flutter/material.dart';

class Mytextformfield extends StatelessWidget {
  Mytextformfield({required controller, super.key});

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
