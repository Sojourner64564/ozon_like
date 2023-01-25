import 'package:flutter/material.dart';
import 'title_of_appbar_four_widget.dart';


class FourPageAppBar extends StatelessWidget implements PreferredSizeWidget{
  const FourPageAppBar({Key? key,}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(31, 32, 40, 10.0),
      automaticallyImplyLeading: false,
      title: const TitleOfAppbarFour(),
      elevation: 0.0,
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