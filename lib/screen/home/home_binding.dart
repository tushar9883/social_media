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
  List homeData = [
    {
      'image': 'assets/image/home1.jpg',
      'profile': 'assets/image/profile1.jpg',
      'name': "Dennis Reynolds",
      'time': "2 hrs ago",
      'like': "5.2k",
      'chat': "1.1k",
      'save': "312",
    },
    {
      'image': 'assets/image/home2.jpg',
      'profile': 'assets/image/profile2.jpg',
      'name': "Nita Kelly",
      'time': "4 hrs ago",
      'like': "3.5k",
      'chat': "2.8k",
      'save': "860",
    }
  ];
}
