import 'package:flutter/material.dart';

class TileLocationOfOzon extends StatelessWidget {
  TileLocationOfOzon({
    Key? key,
    heightSize,
  });
  double? heightSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heightSize,
      child: Column(
        children: [
          Row(
            children: [
               FlutterLogo(size: heightSize),
              const SizedBox(
                width: 15,
              ),
              const Text(
                'Пункт Ozon - ',
                style: TextStyle(color: Colors.blueAccent),
              ),
              Text(
                'Краснореченская улица 76',
                style: const TextStyle(color: Colors.blueAccent),
              ),
              const Expanded(child: SizedBox()),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.chevron_right, color: Colors.white),
              ),
            ],
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.3,
          ),
        ],
      ),
    ); //
  }
}
