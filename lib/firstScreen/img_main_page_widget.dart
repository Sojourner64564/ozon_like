import 'package:flutter/material.dart';

class ImgMainPage extends StatelessWidget{
  const ImgMainPage();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      width: double.infinity,
      child:
        Image.network('https://png.pngtree.com/png-clipart/20190520/original/pngtree-hd-white-lens-flare-effect-png-image_3641050.jpg'),
    );

  }

}