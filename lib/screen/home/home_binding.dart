import 'package:social/base/base_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(), fenix: true);
  }
}

class HomeController extends BaseController {
  List storyList = [
    'assets/image/story1.png',
    'assets/image/story2.png',
    'assets/image/story3.png',
    'assets/image/story4.png',
  ];
}
