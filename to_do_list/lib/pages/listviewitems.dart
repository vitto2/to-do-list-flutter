import 'package:flutter/material.dart';

class Mylistview extends StatefulWidget {
  Mylistview({required listItems, required itemCount, super.key}) {
    itemCountValue = itemCount;
  }

  Color? colorFavoriteIcon = Colors.grey[400];
  late List listItems; 
  late int itemCountValue;

  @override
  State<Mylistview> createState() => _MylistviewState();
}

class _MylistviewState extends State<Mylistview> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: widget.itemCountValue,
      itemBuilder: ((context, index) {
        return SizedBox(
          child: ListTile(
            onLongPress: () {
              setState(() => widget.listItems.removeAt(index));
            },
            leading: GestureDetector(
              onTap: () {
                setState(() {
                  if (widget.colorFavoriteIcon == Colors.grey[400]) {
                    widget.colorFavoriteIcon = Colors.red;
                  } else {
                    widget.colorFavoriteIcon = Colors.grey[400];
                  }
                });
              },
              child: Icon(
                Icons.favorite,
                color: widget.colorFavoriteIcon,
              ),
            ),
            trailing: GestureDetector(
              onTap: (() => setState(
                    () {
                      widget.listItems.isNotEmpty ? widget.listItems.removeAt(index) : null;
                    },
                  )),
              child: const Icon(
                Icons.remove,
                color: Colors.red,
              ),
            ),
            title: Text(widget.listItems[index]),
          ),
        );
      }),
    );
  }
}
