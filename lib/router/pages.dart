import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:social/router/router_name.dart';
import 'package:social/screen/home/home_binding.dart';
import 'package:social/screen/home/home_screen.dart';
import 'package:social/screen/splash/splash_binding.dart';
import 'package:social/screen/splash/splash_screen.dart';


class Pages {
  static List<GetPage> pages() {
    return [
      GetPage(
        name: RouterName.splash,
        page: () => const SplashScreen(),
        binding: SplashBinding(),
      ),
      GetPage(
        name: RouterName.home,
        page: () => const HomeScreen(),
        binding: HomeBinding(),
      ),

      // GetPage(
      //     name: RouterName.search,
      //     page: () => const SearchPage(),
      //     binding: SearchBinding()),
    ];
  }
}
