import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'bottombar_buttons_list_veiw_widget.dart';
import 'fourScreen/fourScreen.dart';
import 'main.dart';
import 'Classes/my_button_class.dart';
import 'secondScreen/second_screen.dart';
import 'thirdScreen/thirdScreen.dart';

class BottomNavigatorBar extends StatefulWidget { // возможно надо будет удалить
  const BottomNavigatorBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavigatorBar> createState() => _BottomNavigatorBarState();
}

class _BottomNavigatorBarState extends State<BottomNavigatorBar> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(100, 80, 80, 100),
      width: double.infinity,
      height: 50,
      child: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
        SalomonBottomBarItem(
          icon: Icon(Icons.home),
          title: Text("Home"),
          selectedColor: Colors.purple,

        ),
        SalomonBottomBarItem(
          icon: Icon(Icons.home),
          title: Text("Home"),
          selectedColor: Colors.purple,
        ),
        SalomonBottomBarItem(
          icon: Icon(Icons.home),
          title: Text("Home"),
          selectedColor: Colors.purple,
        ),
        SalomonBottomBarItem(
          icon: Icon(Icons.home),
          title: Text("Home"),
          selectedColor: Colors.purple,
        ),
      ]),
    );
  }
}
