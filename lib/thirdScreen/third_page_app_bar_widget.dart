import 'package:flutter/material.dart';

import 'title_of_appbar_third_widget.dart';


class ThirdPageAppBar extends StatelessWidget implements PreferredSizeWidget{
  const ThirdPageAppBar({Key? key,}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(15, 15, 25, 40.0),
      leading: Container(
        width: 100,
        child: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      leadingWidth: 25,
      title: const TitleOfAppbarThird(),

    );
  }
}