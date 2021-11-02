import 'dart:developer';
import 'package:get/get.dart';
import 'package:mvvmgetx/api/api.dart';
import 'package:mvvmgetx/features/nextDetail/viewModel/nextDetailViewModel.dart';

class NextDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NextDetailViewModel>(() => NextDetailViewModel());
  }
}
