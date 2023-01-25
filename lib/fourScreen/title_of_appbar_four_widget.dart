import 'package:flutter/material.dart';

class TitleOfAppbarFour extends StatelessWidget {
  const TitleOfAppbarFour({Key? key,});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: const Color.fromRGBO(60, 60, 67, 10.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              iconSize: 20,
              onPressed: () {},
              icon: const Icon(Icons.search)),
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Искать на Ozon',
              ),
            ),
          ),
          SizedBox(
            width: 40,
            child:
            IconButton(onPressed: () {}, icon: const Icon(Icons.mic)),
          ),
        ],
      ),
    );
  }
}
