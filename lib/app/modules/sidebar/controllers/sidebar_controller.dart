import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class SidebarController extends GetxController {
  //TODO: Implement SidebarController
  RxString selectedItem = ''.obs;

  @override
  void navigateTo(String routeName) {
    selectedItem.value = routeName;
    Get.toNamed(routeName);
  }

   void keluar() {
    // Implement logout logic here, then navigate to the login page or home page
    Get.offNamed('/login'); // Replace '/login' with the route you want to navigate to
  }
}
