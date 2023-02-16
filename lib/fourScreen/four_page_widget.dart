import 'package:flutter/material.dart';
import '../Classes/app_list_four_class.dart';
import '../Classes/purchases_list_four_class.dart';
import '../Classes/serveses_list_four_class.dart';
import '../Classes/sqr_buttons_four_page_class.dart';
import 'app_four_page_widget.dart';
import 'avatar_name_four_page_widget.dart';
import 'finance_squares_buttons_profile_widget.dart';
import 'purchases_four_page_widget.dart';
import 'serveses_four_page_widget.dart';
import 'square_buttons_four_page_widget.dart';



class FourPage extends StatelessWidget{
  const FourPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView(children: [
        const SizedBox(height: 20),
        const AvatarNameFourPage(),
        const SizedBox(height: 5),
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
        const SizedBox(height: 10),
        const  FinanceSquaresButtonsProfile(),

      PurchasesFourPage(purchasesListFour:[
        PurchasesListFour(text:"Заказы", onPressed: (){}),
        PurchasesListFour(text:"Возвраты", onPressed: (){}),
        PurchasesListFour(text:"Купленные товары", onPressed: (){}),
        PurchasesListFour(text:"Сравнение товаров", onPressed: (){}),
        PurchasesListFour(text:"Билеты и отели", onPressed: (){}),
        PurchasesListFour(text:"Отзывы", onPressed: (){}),
      ]),
      ServeseFourPage(servesesListFour:[
        ServesesListFour(text:"Коды и сертификаты", onPressed: (){}),
        ServesesListFour(text:"Баланс средств", onPressed: (){}),
        ServesesListFour(text:"Закупки для бизнеса", onPressed: (){}),
        ServesesListFour(text:"Ozon Клуб", onPressed: (){}),
      ]),
      AppFourPage(appListFour: [
        AppListFour(text:'Город', onPressed: (){}),
        AppListFour(text:'Валюта', onPressed: (){}),
        AppListFour(text:'Цвет приложения', onPressed: (){}),
        AppListFour(text:'О приложении', onPressed: (){}),
        AppListFour(text:'Помощь', onPressed: (){}),
      ],)

    ],
    ),
    );

  }

}