import 'package:auto_route/annotations.dart';
import 'package:fetch_data/screens/home.dart';
import 'package:fetch_data/screens/profile.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: Home, initial: true),
    AutoRoute(page: Profile)
  ],
)
class $AppRouter {}
