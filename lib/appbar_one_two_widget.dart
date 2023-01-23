import 'package:flutter/material.dart';
import 'title_of_appbar_one_two_page_widget.dart';


class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  const MyAppBar({Key? key,}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(15, 15, 25, 40.0),
      leading: Container(
        width: 100,
        child: IconButton(
          icon: const Icon(Icons.flight),
          onPressed: () {},
        ),
      ),
      leadingWidth: 25,
      title: const TitleOfAppbarOneTwo(),
      actions: [
        SizedBox(
          width: 40,
          child: IconButton(
              onPressed: () {}, icon: const Icon(Icons.question_answer)),
        ),
      ],
    );
  }
}