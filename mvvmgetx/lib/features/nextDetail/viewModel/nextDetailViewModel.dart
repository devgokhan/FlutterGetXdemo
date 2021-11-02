import 'package:get/get.dart';
import 'package:mvvmgetx/api/api.dart';
import 'package:mvvmgetx/api/dataModels/sampleResponseModel.dart';
import 'package:mvvmgetx/main.dart';

class NextDetailViewModel extends GetxController {

  Api api = new Api();
  RxString apiOutput = RxString("");

  void increment() => MyApp.counter.value++;

  void fetchSampleApi() async {
    print("Fetching sample api..");
    apiOutput.value = "Fetching Sample Api..";
    apiOutput.value = (apiOutput.value + "\nFetching...");
    api.sampleApi((response, error) => {
      if (error != null) {
        apiOutput.value = (apiOutput.value + "\nFailed due to error: " + error),
      } else if (response != null) {
        apiOutput.value = (apiOutput.value + "\nUrl: " + response.url),
        apiOutput.value = (apiOutput.value + "\nData strVal: " + response.data.strVal),
      } else {
        apiOutput = (apiOutput.value + "\nApi failed!").obs,
      }
    });

  }
}