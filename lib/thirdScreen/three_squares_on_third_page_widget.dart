import 'package:flutter/material.dart';

import '../Classes/my_squares_buttons_third_page_class.dart';

class ThreeSquaresOnThirdPage extends StatelessWidget {
  const ThreeSquaresOnThirdPage({Key? key, required this.buttons});
  final List<MySquaresButtonsThirdPage> buttons;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260,
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.8,
          crossAxisSpacing: 10,
          crossAxisCount: 3,
          mainAxisSpacing: 10,
        ),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          final item = buttons[index];
          return GestureDetector(
            onTap: item.onPressed,
            child: Container(
              //width: 80,
              //height: 120,
              padding: const EdgeInsets.fromLTRB(5, 5, 5, 2),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(60, 60, 67, 10.0),
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
                  Text(
                    item.text,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
