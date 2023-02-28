import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ozon_like/routes/router.gr.dart';
import 'package:ozon_like/thirdScreen/third_page_app_bar_widget.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'appbar_one_two_widget.dart';
import 'bottom_navigator_bar_widget.dart';
import 'firstScreen/elavated_icon_button_widget.dart';
import 'firstScreen/first_screen.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      title: 'Flutter Demo',
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key,});
  final Color colorScaffoldOneTwo = const Color.fromRGBO(31, 32, 40, 10.0);


  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      backgroundColor: colorScaffoldOneTwo,
      appBarBuilder: (BuildContext, tabsRouter) {
          return MyAppBar();
      },
      routes: [
        const FirstScreenRouter(),
        const SecondScreenRouter(),
        const ThirdScreenRouter(),
        const FourScreenRouter(),
      ],
     bottomNavigationBuilder: (BuildContext, tabsRouter) {
        return  SalomonBottomBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: [
              SalomonBottomBarItem(
                icon: const Icon(Icons.home_outlined),
                title: const Text(""),
                selectedColor: Colors.blue,
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.toc),
                title: const SizedBox(),
                selectedColor: Colors.blue,
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.play_arrow_outlined),
                title: const Text(""),
                selectedColor: Colors.blue,
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.domain_add_outlined),
                title: const Text(""),
                selectedColor: Colors.blue,
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.shopping_bag_outlined),
                title: const Text(""),
                selectedColor: Colors.blue,
              ),
              SalomonBottomBarItem(
                icon: const Icon(Icons.face_outlined),
                title: const Text(""),
                selectedColor: Colors.blue,
              ),
            ]);
     },


    );
  }
}




