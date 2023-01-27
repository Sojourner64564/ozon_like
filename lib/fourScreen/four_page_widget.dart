import 'package:flutter/material.dart';
import '../Classes/sqr_buttons_four_page_class.dart';
import 'avatar_name_four_page_widget.dart';
import 'finance_squares_buttons_profile_widget.dart';
import 'square_buttons_four_page_widget.dart';



class FourPage extends StatelessWidget{
  const FourPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      SizedBox(height: 20),
      AvatarNameFourPage(),
      SizedBox(height: 5),
      SquareButtonsFourPage(sqrButtonsFourPage: [
        SqrButtonsFourPage(icon:Icons.ac_unit, upperText:"Избранное", bottomText:"0 товаров", onPressed:(){}),
        SqrButtonsFourPage(icon:Icons.ac_unit, upperText:"Баллы за отзывы", bottomText:"Нет товаров", onPressed:(){}),
        SqrButtonsFourPage(icon:Icons.ac_unit, upperText:"Premium", bottomText:"Оформить", onPressed:(){}),
        SqrButtonsFourPage(icon:Icons.ac_unit, upperText:"Билеты", bottomText:"и отели", onPressed:(){}),
        SqrButtonsFourPage(icon:Icons.ac_unit, upperText:"Моменты", bottomText:"Профиль", onPressed:(){}),
        SqrButtonsFourPage(icon:Icons.ac_unit, upperText:"Импортные товары", bottomText:"Купить", onPressed:(){}),
        SqrButtonsFourPage(icon:Icons.ac_unit, upperText:"Привлекай продавцов", bottomText:"+ Баллы", onPressed:(){}),
        SqrButtonsFourPage(icon:Icons.ac_unit, upperText:"Автомобили", bottomText:"Новые и б/у", onPressed:(){}),
        SqrButtonsFourPage(icon:Icons.ac_unit, upperText:"Опросы", bottomText:"о работе Ozon", onPressed:(){}),
        SqrButtonsFourPage(icon:Icons.ac_unit, upperText:"ozon забота", bottomText:"Соцпроект", onPressed:(){}),
      ],),
      SizedBox(height: 10),
      FinanceSquaresButtonsProfile(),


    ],
    );

  }

}