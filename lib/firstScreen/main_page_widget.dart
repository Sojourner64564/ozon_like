import 'package:flutter/material.dart';
import '../tile_location_of_ozon_widget.dart';
import 'gorizonal_list_view_main_page_widget.dart';

class MainPage extends StatelessWidget{
  const MainPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
       TileLocationOfOzon(),
      const GorizontalListViewMainPage(),

    ],
    );

  }

}