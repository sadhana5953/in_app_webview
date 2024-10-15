import 'package:get/get.dart';

class SearchingController extends GetxController
{
  RxString search = 'https://www.google.com/'.obs;

  void searchSomething(String value)
  {
    search.value='https://www.google.com/search?q=$value';
    update();
    refresh();
  }
}