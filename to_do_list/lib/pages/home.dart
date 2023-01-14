import 'package:flutter/material.dart';
import 'package:to_do_list/pages/button.dart';
import 'package:to_do_list/pages/listviewitems.dart';
import 'package:to_do_list/pages/textFormField.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> values = [];

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "To-do List",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: (MediaQuery.of(context).size.width / 100) * 80,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Mytextformfield(controller: controller)),
                ),
                SizedBox(
                  width: (MediaQuery.of(context).size.width / 100) * 20,
                  height: 40,
                  child: Center(
                      child: Mybutton(
                    list: values,
                    text: controller.text,
                  )),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Mylistview(
              itemCount: values.length,
              listItems: values,
            )
          ],
        ),
      ),
    );
  }
}
