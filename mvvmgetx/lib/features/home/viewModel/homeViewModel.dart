import 'package:get/get.dart';
import 'package:mvvmgetx/main.dart';

class HomeViewModel extends GetxController {

  int normalVal = 0;

  void increment() =>  MyApp.counter.value++;

  int getCounter() {
    return MyApp.counter.value;
  }

  void welcome() {
    Get.defaultDialog(
        onConfirm: () => { print("Thanks!"), Get.back()
        },
        middleText: "Welcome!"
    );
  }

  void updateSampleWithGetBuilder() {
    print("updateSampleWithGetBuilder.. ");
    update(['getBuilderSampleId']);
  }
}