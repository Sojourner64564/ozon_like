import 'package:flutter/material.dart';
import 'bottombar_buttons_list_veiw_widget.dart';
import 'fourScreen/fourScreen.dart';
import 'main.dart';
import 'Classes/my_button_class.dart';
import 'secondScreen/second_screen.dart';
import 'thirdScreen/thirdScreen.dart';

class BottomNavigatorBar extends StatelessWidget {
  const BottomNavigatorBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(100, 80, 80, 100),
      width: double.infinity,
      height: 50,
      child: BottombarButtonsListView(
        buttons: [
          MyButtonsClass(
            icon: Icons.home_outlined,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FirstScreen()),
              );
            },
          ),
          MyButtonsClass(
              icon: Icons.toc,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                );
              }),
          MyButtonsClass(icon: Icons.play_arrow_outlined, onPressed: () {}),
          MyButtonsClass(
            icon: Icons.domain_add_outlined,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ThirdScreen()),
              );
            },
          ),
          MyButtonsClass(icon: Icons.shopping_bag_outlined, onPressed: () {}),
          MyButtonsClass(
              icon: Icons.face_outlined,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FourScreen()),
                );
              }),
        ],
      ),
    );
  }
}
