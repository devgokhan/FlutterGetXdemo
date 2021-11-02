import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:mvvmgetx/api/dataModels/sampleRequestModel.dart';
import 'package:mvvmgetx/api/dataModels/sampleResponseModel.dart';

class Api {

  void sampleApi(Function(SampleResponseModel? response, String? error) result) async {
    try {
      SampleRequestModel requestModel = new SampleRequestModel("aStringValue", 105);
      Response response = await Dio().post('https://postman-echo.com/post', data: requestModel);
      SampleResponseModel responseModel = SampleResponseModel.fromJson(response.data);
      result(responseModel, null);
    }  on DioError catch (e) {
      print('Type: ' + e.type.toString());
      print('Message: ' + e.message);
      result(null, e.message);
    }
  }
}