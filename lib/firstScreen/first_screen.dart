import 'package:flutter/material.dart';
import '../tile_location_of_ozon_widget.dart';
import 'gorizonal_list_view_main_page_widget.dart';

class FirstScreen extends StatelessWidget{
  const FirstScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
       TileLocationOfOzon(),
      const SizedBox(height: 5),
      HorizontalPageViewMainPage(),
    ],
    );

  }

}