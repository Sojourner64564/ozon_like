import 'package:flutter/material.dart';

class TitleOfAppbarOneTwo extends StatelessWidget {
  const TitleOfAppbarOneTwo({Key? key,});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.blueGrey,
      ),
      //color: Colors.grey,
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
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey)),
                hintText: 'Искать на Ozon',
              ),
            ),
          ),
          SizedBox(
            width: 30,
            child:
            IconButton(onPressed: () {}, icon: const Icon(Icons.mic)),
          ),
          SizedBox(
            width: 45,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.center_focus_weak)),
          ),
        ],
      ),
    );
  }
}
