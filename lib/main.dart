import 'package:flutter/material.dart';
import 'Cubits/change_tile_of_ozon_point_animated_size_cubit.dart';
import 'appbar_one_two_widget.dart';
import 'bottom_navigator_bar_widget.dart';
import 'bottombar_buttons_list_veiw_widget.dart';
import 'firstScreen/elavated_icon_button_widget.dart';
import 'firstScreen/main_page_widget.dart';
import 'Classes/my_button_class.dart';
import 'title_of_appbar_one_two_page_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key,});
  final Color colorScaffoldOneTwo = const Color.fromRGBO(31, 32, 40, 10.0);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorScaffoldOneTwo,
      appBar: const MyAppBar(),
      body: const MainPage(),
      floatingActionButton: const ElavatedIconButton(),
      bottomNavigationBar: const BottomNavigatorBar(),
    );
  }
}




