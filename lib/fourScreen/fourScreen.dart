import 'package:flutter/material.dart';
import '../bottom_navigator_bar_widget.dart';
import 'four_page_app_bar_widget.dart';
import 'four_page_widget.dart';



class FourScreen extends StatelessWidget {
  const FourScreen({super.key});
  final Color colorScaffoldOneTwo = const Color.fromRGBO(31, 32, 40, 10.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorScaffoldOneTwo,
      appBar: const FourPageAppBar(),
      body:   FourPage(), //was const
     // bottomNavigationBar: const BottomNavigatorBar(),
    );
  }
}