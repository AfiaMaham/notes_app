import 'package:get/get.dart';

class TestController extends GetxController {
  Rx<int> selected = 0.obs;
  Rx<bool> isHidden = true.obs;
  RxList<Map<String, String>> notes = <Map<String, String>>[].obs;


}
