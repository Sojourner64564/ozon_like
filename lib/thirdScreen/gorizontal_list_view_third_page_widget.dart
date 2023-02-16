import 'package:flutter/material.dart';
import '../firstScreen/img_list_view_gorizontal_main_page.dart';

class GorizontalListViewThirdPage extends StatelessWidget{
  const GorizontalListViewThirdPage();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 400,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        itemCount: 2,
        itemBuilder: (BuildContext context, int index){
          return const ImgListViewGorizontalMainPage();

        },
        separatorBuilder: (BuildContext context, int index) { return const SizedBox(width: 20,); },
      ),
    );

  }

}