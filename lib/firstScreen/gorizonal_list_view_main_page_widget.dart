import 'package:flutter/material.dart';
import 'img_list_view_gorizontal_main_page.dart';

class GorizontalListViewMainPage extends StatelessWidget{
  const GorizontalListViewMainPage();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 400,
      child: ListView.separated(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 15),
      itemCount: 4,
        itemBuilder: (BuildContext context, int index){
          return ImgListViewGorizontalMainPage();

        },
        separatorBuilder: (BuildContext context, int index) { return SizedBox(width: 20,); },
    ),
    );

  }

}