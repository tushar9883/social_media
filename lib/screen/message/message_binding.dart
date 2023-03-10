import 'package:flutter/material.dart';
import 'package:social/base/base_controller.dart';


class MessageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MessageController(), fenix: true);
  }
}

class MessageController extends BaseController {
  TextEditingController searchController = TextEditingController();
  List messageList = [
    {
      "image": "assets/image/message1.jpg",
      "name": "Malena Tudi",
      "des": "Hey, how's it going?",
    },
    {
      "image": "assets/image/message2.jpg",
      "name": "Jakob Curtis",
      "des": "Yo, are you going to the Jake’s wedding?",
    },
    {
      "image": "assets/image/message3.jpg",
      "name": "Abram Levin",
      "des": "Amir said we’d be staying over for a while... but ...",
    },
    {
      "image": "assets/image/message4.jpg",
      "name": "Marilyn Herwitz",
      "des": "hey, i got new memes for you",
    },
    {
      "image": "assets/image/message5.jpg",
      "name": "Desirae Saris",
      "des": "GoT really took a nose dive huh",
    },
  ];
}
