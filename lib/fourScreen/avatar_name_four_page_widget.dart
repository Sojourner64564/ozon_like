import 'package:flutter/material.dart';

class AvatarNameFourPage extends StatelessWidget {
  const AvatarNameFourPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(60),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(60.0),
                child: const Image(
                  width: 70,
                  height: 70,
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/avatar.jpg'),
                )),
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sojourner',
                style: TextStyle(fontSize: 23, color: Colors.white),
              ),
              const Text(
                'Управление аккаунтом',
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
            ],
          ),
          const Expanded(child: SizedBox()),
          const Icon(Icons.chevron_right,
          color: Colors.grey,
          )
          
        ],
      ),
    );
  }
}
