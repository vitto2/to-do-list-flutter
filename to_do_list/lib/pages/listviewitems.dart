import 'package:flutter/material.dart';

class Mylistview extends StatefulWidget {
  Mylistview({required listItems, required itemCount, super.key}) {
    itemCountValue = itemCount;
    listItemsValue = listItems;
  }

  Color? colorFavoriteIcon = Colors.grey[400];
  late List listItemsValue;
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
              setState(() => widget.listItemsValue.removeAt(index));
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
                      widget.listItemsValue.isNotEmpty
                          ? widget.listItemsValue.removeAt(index)
                          : null;
                    },
                  )),
              child: const Icon(
                Icons.remove,
                color: Colors.red,
              ),
            ),
            title: Text(widget.listItemsValue[index]),
          ),
        );
      }),
    );
  }
}
