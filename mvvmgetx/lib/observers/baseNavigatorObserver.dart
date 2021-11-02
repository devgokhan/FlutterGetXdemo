import 'package:get/get.dart';
import 'package:mvvmgetx/route/app_pages.dart';
import 'package:mvvmgetx/route/app_routes.dart';

class BaseNavigatorObserver {
  static observer(Routing? routing) {
    if (routing?.current == AppRoutes.nextDetail) {
      print("NextDetail opened");
    }
  }
}