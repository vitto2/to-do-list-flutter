import 'package:flutter/material.dart';

class training extends StatelessWidget {
  training({super.key});

  List<String> lista = ["Vitor", "Vitor", "Vitor", "Vitor", "Vitor", "Vitor"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Testando listview"),
      ),
      body: SizedBox(
        child: ListView.builder(
          itemCount: lista.length,
          itemBuilder: ((context, index) {
            return Text(lista[index]);
          }),
        ),
      ),
    );
  }
}
