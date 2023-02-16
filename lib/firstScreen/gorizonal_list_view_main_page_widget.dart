import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ozon_like/Cubits/first_page_page_indicator_cubit.dart';
import 'img_list_view_gorizontal_main_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class GorizontalListViewMainPage extends StatefulWidget {
  GorizontalListViewMainPage();
  final PageController pageController = PageController();
  final FirstPageIndicator firstPageIndicator = FirstPageIndicator();

  void goToListen() {
    pageController.addListener(() {
      debugPrint(pageController.page.toString()); //1174
      debugPrint('fgfgf');
      debugPrint(pageController.position.pixels.toString());
      firstPageIndicator.goToPage(pageController.page);
    });
  }

  @override
  State<GorizontalListViewMainPage> createState() =>
      _GorizontalListViewMainPage();
}

class _GorizontalListViewMainPage extends State<GorizontalListViewMainPage> {
  @override
  void initState() {
    super.initState();
    widget.goToListen();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: widget.pageController,
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: ImgListViewGorizontalMainPage(),
              );
            },
          ),
          BlocBuilder<FirstPageIndicator, double>(
              bloc: FirstPageIndicator(),
              builder: (context, state) {
                return Column(
                  children: [
                    SmoothIndicator(
                      offset: state,
                      count: 4,
                    ),
                    Text(state.toString(),
                   style: TextStyle(
                     fontSize: 60,
                   ), ),
                  ],
                );
              }),
        ],
      ),
    );
  }
}
