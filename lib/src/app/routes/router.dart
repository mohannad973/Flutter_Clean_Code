import 'package:auto_route/auto_route.dart';
import 'package:willow_care/src/features/profile/presentation/widgets/profile_page.dart';
import 'package:willow_care/src/features/schedule/presentation/widgets/schedule_page.dart';

import '../../features/intro/intro_page.dart';
import '../../features/main/main_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[

    AutoRoute(
      path: '/',
      name: 'introAppRouter',
      page: IntroductionSlides,
    ),
    AutoRoute(
      path: 'profilePage',
      name: 'profileAppRouter',
      page: ProfilePage,
    ),
    AutoRoute(
      path: 'main',
      name: 'mainAppRouter',
      page: MainPage,
      children: [
        // AutoRoute(
        //   path: '',
        //   name: 'profileAppRouter',
        //   page: ProfilePage,
        // ),
        AutoRoute(
          path: '',
          name: 'scheduleAppRouter',
          page: SchedulePage,
        ),
      ],
    )
  ],
)
class $AppRouter {}
