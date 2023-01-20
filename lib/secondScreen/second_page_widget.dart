import 'package:flutter/material.dart';
import '../Cubits/change_tile_of_ozon_point_animated_size_cubit.dart';
import '../tile_location_of_ozon_widget.dart';
import 'grid_view_in_second_page_widget.dart';
import 'two_buttons_on_second_page_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondPage extends StatelessWidget {
  SecondPage({Key? key});
  final ChangeTileOfOzonPointAnimatedSize changeTileOfOzonPointAnimatedSize =
      ChangeTileOfOzonPointAnimatedSize();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BlocBuilder<ChangeTileOfOzonPointAnimatedSize, int>(
          bloc: changeTileOfOzonPointAnimatedSize,
          builder: (context, state) {
            return AnimatedContainer(
              curve: Curves.ease,
              height: state.toDouble(),
              duration: const Duration(seconds: 0),
              child: ClipRect(
                child: Wrap(
                  children: [
                    TileLocationOfOzon(),
                  ],
                ),
              ),
            );
          },
        ),
        const TwoButtonsOnSecondPage(),
        Expanded(child:
        GridVeiwInSecondPage(
            changeTileOfOzonPointAnimatedSize:
                changeTileOfOzonPointAnimatedSize),
        ),
      ],
    );
  }
}
