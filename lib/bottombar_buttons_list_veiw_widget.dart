import 'package:flutter/material.dart';
import 'Classes/my_button_class.dart';

class BottombarButtonsListView extends StatelessWidget {
  const BottombarButtonsListView({Key? Key, required this.buttons});
  final List<MyButtonsClass> buttons;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: buttons.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final item = buttons[index];
        return Row(
          children: [
            SizedBox(
              width: 10,
            ),
            IconButton(
              onPressed: item.onPressed,
              icon: Icon(item.icon),
              color: item.color,
              iconSize: item.iconSize,
            ),
            SizedBox(
              width: 10,
            ),
          ],
        );
      },
    );
  }
}
