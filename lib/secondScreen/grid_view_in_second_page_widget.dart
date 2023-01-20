import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Cubits/change_tile_of_ozon_point_animated_size_cubit.dart';
import 'two_buttons_on_second_page_widget.dart';



  class GridVeiwInSecondPage extends StatefulWidget {
   GridVeiwInSecondPage({ super.key,
   required this.changeTileOfOzonPointAnimatedSize,
   });
  final _controller = ScrollController();
  final ChangeTileOfOzonPointAnimatedSize changeTileOfOzonPointAnimatedSize;
  void activateCounterOfPixelsOfGridVeiw() {
    _controller.addListener(
          () {
            changeTileOfOzonPointAnimatedSize.hui(_controller.position.pixels);
          },
    );
  }

  @override
  State<GridVeiwInSecondPage> createState() => _GridVeiwInSecondPage();
  }

  class _GridVeiwInSecondPage extends State<GridVeiwInSecondPage> {


    @override
    void initState() {
      super.initState();
      widget.activateCounterOfPixelsOfGridVeiw();
    }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height -
          180 -
          kBottomNavigationBarHeight, //564 kBottomNavigationBarHeight
      padding: const EdgeInsets.fromLTRB(15, 5, 15, 2),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.8,
          crossAxisSpacing: 10,
          crossAxisCount: 3,
          mainAxisSpacing: 10,
        ),
        controller:  widget._controller,
        itemCount: 39,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.fromLTRB(5, 5, 5, 2),
              decoration: BoxDecoration(
                color: Color.fromRGBO(60, 60, 67, 10.0),
                borderRadius: BorderRadius.circular(15),
              ),
              alignment: Alignment.center,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      "https://cdn1.ozone.ru/s3/cms/07/tdf/wc250/400-400-2-min.jpg",
                      fit: BoxFit.cover,
                      width: 100,
                      height: 100,
                    ),
                  ),
                 const  Text(
                    "Мегарозыгрыш квартиры",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  BlocBuilder<ChangeTileOfOzonPointAnimatedSize, int>(
                    bloc: widget.changeTileOfOzonPointAnimatedSize,
                    builder: (context, state) {
                      return Container(
                        width: double.infinity,
                        height: 30,
                        color: Colors.green,
                        child: Text(state.toString()),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
  ),);

  }
}

