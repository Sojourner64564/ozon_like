import 'package:flutter/material.dart';
import '../appbar_one_two_widget.dart';
import '../bottom_navigator_bar_widget.dart';
import 'third_page_app_bar_widget.dart';
import 'third_page_widget.dart';


class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});
  final Color colorScaffoldOneTwo = const Color.fromRGBO(31, 32, 40, 10.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorScaffoldOneTwo,
      appBar: const ThirdPageAppBar(),
      body:   ThirdPage(), //was const
      bottomNavigationBar: const BottomNavigatorBar(),
    );
  }
}