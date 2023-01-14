import 'package:flutter/material.dart';

class ImgListViewGorizontalMainPage extends StatelessWidget {
  const ImgListViewGorizontalMainPage();
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(10),
        ),
        width: 300,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.network(
            'https://cdn1.ozone.ru/s3/sellerassets/ww1450_q80/535dae08-8044-11ed-a3fb-0e5227902899.jpeg',
            fit: BoxFit.cover,
          ),
        ));
  }
}
