import 'package:flutter/material.dart';
import 'img_list_view_gorizontal_main_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HorizontalPageViewMainPage extends StatefulWidget {
  const HorizontalPageViewMainPage({super.key});


  @override
  State<HorizontalPageViewMainPage> createState() =>
      _HorizontalPageViewMainPage();
}

class _HorizontalPageViewMainPage extends State<HorizontalPageViewMainPage> {
final PageController pageController = PageController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      width: double.infinity,
      child: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: pageController,
            itemCount: 4,
            physics: const FixedExtentScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ImgListViewGorizontalMainPage(),
              );
            },
          ),
          Positioned(
            bottom: 10,
            left: MediaQuery.of(context).size.width / 2 - 20.0,
            child: Center(

              child: SizedBox(
                width: 10,
                height: 15,
                child: SmoothPageIndicator(
                  count: 4,
                  controller: pageController,
                  effect: const WormEffect(
                    dotHeight: 7,
                    dotWidth: 7,
                    dotColor: Colors.grey,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
