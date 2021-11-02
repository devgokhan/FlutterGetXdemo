import 'package:get/get.dart';
import 'package:mvvmgetx/features/home/viewModel/homeViewModel.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeViewModel>(() => HomeViewModel());
  }
}
