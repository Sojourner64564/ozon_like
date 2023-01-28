import 'package:flutter/material.dart';

import '../Classes/app_list_four_class.dart';
import '../Classes/serveses_list_four_class.dart';

class AppFourPage extends StatelessWidget {
  const AppFourPage({Key? key, required this.appListFour});
  final List<AppListFour> appListFour;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'ПРИЛОЖЕНИЕ',
              style: TextStyle(
                fontSize: 11,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 180,
              padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(31, 32, 40, 10.0),
              ),
              child: ListView.separated(
                itemCount: 5,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  final item = appListFour[index];
                  return Padding(
                    padding: EdgeInsets.fromLTRB(20, 1, 20, 1),
                    child: GestureDetector(
                      onTap: item.onPressed,
                      child: Row(
                        children: [
                          Text(
                            item.text,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Icon(Icons.chevron_right,
                            color: Colors.grey,
                          ),
                        ],
                      ),),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(color: Colors.grey,
                    indent: 20,
                  );
                },
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
