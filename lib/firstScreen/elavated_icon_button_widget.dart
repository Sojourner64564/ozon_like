import 'package:flutter/material.dart';

class ElavatedIconButton extends StatelessWidget {
  const ElavatedIconButton();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.deepPurpleAccent,
      ),
      child:
        IconButton(
      onPressed: () {},
      color: Colors.white,
      icon: const Icon(Icons.confirmation_num_sharp),
    ),);
  }
}
