import 'package:flutter/material.dart';

class ThreeButtonsOnThirdPage extends StatelessWidget {
  const ThreeButtonsOnThirdPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
      child: Container(
          width: 550, //550
          height: 45,
          padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 116,
                height: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(31, 32, 40, 10.0)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: Text("Женщинам"),
                ),
              ),
              SizedBox(
                width: 116,
                height: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(31, 32, 40, 10.0)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: Text("Мужчинам"),
                ),
              ),
              SizedBox(
                width: 116,
                height: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(31, 32, 40, 10.0)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  child: Text("Детям"),
                ),
              ),
            ],
          )),
    );
  }
}
