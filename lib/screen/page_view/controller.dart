import 'package:get/get.dart';

class PageViewController extends GetxController {
  RxInt currentIndex = 0.obs;

  onSwipeRight() {
    int selectedIndex = currentIndex.value;
    if (selectedIndex <= 2) {
      selectedIndex = selectedIndex + 1;
    } else {
      selectedIndex = 0;
    }

    currentIndex.value = selectedIndex;
  }

  onSwipeLeft() {
    int selectedIndex = currentIndex.value;
    if (currentIndex.value <= 0) {
      selectedIndex = selectedIndex - 1;
    } else {
      selectedIndex = 2;
    }

    currentIndex.value = selectedIndex;
  }
}
