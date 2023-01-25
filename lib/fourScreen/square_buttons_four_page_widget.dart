import 'package:flutter/material.dart';
import '../Classes/sqr_buttons_four_page_class.dart';




class SquareButtonsFourPage extends StatelessWidget{
  const SquareButtonsFourPage({Key? key, required this.sqrButtonsFourPage});
  final List<SqrButtonsFourPage> sqrButtonsFourPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: ListView.separated(
        padding: const EdgeInsets.all(8),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          final item = sqrButtonsFourPage[index];
          return GestureDetector(
            child: Container(
            width: 100,
            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
            decoration: BoxDecoration(
                color: const Color.fromRGBO(60, 60, 67, 10.0),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Icon(item.icon),
              Expanded(child:SizedBox()),
              Text(item.upperText,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
              ),
              Text(item.bottomText,
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey,
              ),
              ),
            ],
            )
          ),
          );
        }, separatorBuilder: (BuildContext context, int index) { return const SizedBox(width: 5,); },
    ),
    );

  }

}