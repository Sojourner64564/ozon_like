import 'package:flutter/material.dart';

import '../Classes/my_squares_buttons_third_page_class.dart';

class ThreeSquaresOnThirdPage extends StatelessWidget {
  const ThreeSquaresOnThirdPage({Key? key, required this.buttons});
  final List<MySquaresButtonsThirdPage> buttons;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,

      itemCount: 2,
    itemBuilder: (BuildContext context, int index){
      final item = buttons[index];
      return GestureDetector(
      onTap: item.onPressed,
      child: Container(
        padding: EdgeInsets.fromLTRB(5, 5, 5, 2),
        decoration: BoxDecoration(
          color: Color.fromRGBO(60, 60, 67, 10.0),
          borderRadius: BorderRadius.circular(15),
        ),
        alignment: Alignment.center,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                item.url,
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
            ),
              Text( item.text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );

    },
    );
  }
}
