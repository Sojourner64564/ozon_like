import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:ozon_like/main.dart';
import 'package:ozon_like/secondScreen/second_screen.dart';
import 'package:ozon_like/thirdScreen/thirdScreen.dart';
import '../firstScreen/first_screen.dart';
import '../fourScreen/fourScreen.dart';






/*
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page:  FirstScreen ,
      children: [
        AutoRoute(
          path: 'posts',
          name: 'PostsRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: FourScreen),
            //AutoRoute(path: ':postId', page: SinglePostPage),
          ],
        ),
        AutoRoute(
          path: 'users',
          name: 'UsersRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: SecondScreen),
           // AutoRoute(path: ':userId', page: UserProfilePage),
          ],
        ),
        AutoRoute(
          path: 'settings',
          name: 'SettingsRouter',
          page: ThirdScreen,
        )
      ],
    )
  ],
)
class $AppRouter{}
*/


@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      initial: true,
      page: HomePage,
    children:[
        AutoRoute(
          path: 'firstScreen',
          name: 'FirstScreenRouter',
          page: FirstScreen,
        ),
        AutoRoute(
          path: 'secondScreen',
          name: 'SecondScreenRouter',
          page: SecondScreen,
        ),
        AutoRoute(
          path: 'thirdScreen',
          name: 'ThirdScreenRouter',
          page: ThirdScreen,
        ),
      AutoRoute(
        path: 'fourScreen',
        name: 'FourScreenRouter',
        page: FourScreen,
      ),
]
),
  ],
)
class $AppRouter{}