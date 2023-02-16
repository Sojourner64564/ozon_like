import 'package:flutter/material.dart';
import 'package:ozon_like/Classes/my_squares_buttons_third_page_class.dart';
import 'gorizontal_list_view_third_page_widget.dart';
import 'three_buttons_on_third_page_widget.dart';
import 'three_squares_on_third_page_widget.dart';


class ThirdPage extends StatelessWidget{
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const ThreeButtonsOnThirdPage(),
      const SizedBox(height: 10),
      const GorizontalListViewThirdPage(),
      const SizedBox(height: 15),
      ThreeSquaresOnThirdPage(buttons:[
        MySquaresButtonsThirdPage(text: "Одежда", onPressed: (){}),
        MySquaresButtonsThirdPage(text: "Обувь", onPressed: (){}),
        MySquaresButtonsThirdPage(text: "Аксессуары", onPressed: (){}),
      ])

    ],
    );

  }

}