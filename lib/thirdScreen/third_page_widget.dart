import 'package:flutter/material.dart';
import 'package:ozon_like/Classes/my_squares_buttons_third_page_class.dart';
import 'gorizontal_list_view_third_page_widget.dart';
import 'three_buttons_on_third_page_widget.dart';
import 'three_squares_on_third_page_widget.dart';


class ThirdPage extends StatelessWidget{
  const ThirdPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ThreeButtonsOnThirdPage(),
      SizedBox(height: 10),
      GorizontalListViewThirdPage(),
      SizedBox(height: 10),
      ThreeSquaresOnThirdPage(buttons:[
        MySquaresButtonsThirdPage(text: "text", onPressed: (){}),
        MySquaresButtonsThirdPage(text: "text1", onPressed: (){}),
        MySquaresButtonsThirdPage(text: "text2", onPressed: (){}),
      ])

    ],
    );

  }

}