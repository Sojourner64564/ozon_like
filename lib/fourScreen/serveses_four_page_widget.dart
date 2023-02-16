import 'package:flutter/material.dart';

import '../Classes/serveses_list_four_class.dart';

class ServeseFourPage extends StatelessWidget {
  const ServeseFourPage({Key? key, required this.servesesListFour});
  final List<ServesesListFour> servesesListFour;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              'СЕРВИСЫ',
              style: TextStyle(
                fontSize: 11,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 180,
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(31, 32, 40, 10.0),
              ),
              child: ListView.separated(
                itemCount: 4,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  final item = servesesListFour[index];
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(20, 1, 20, 1),
                    child: GestureDetector(
                      onTap: item.onPressed,
                      child: Row(
                        children: [
                          Text(
                            item.text,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          const Expanded(child: const SizedBox()),
                          const  Icon(Icons.chevron_right,
                            color: Colors.grey,
                          ),
                        ],
                      ),),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(color: Colors.grey,
                    indent: 20,
                  );
                },
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
