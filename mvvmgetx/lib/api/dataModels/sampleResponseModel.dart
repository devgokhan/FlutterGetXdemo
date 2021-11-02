
import 'package:mvvmgetx/api/dataModels/sampleRequestModel.dart';

class SampleResponseModel {
  final SampleRequestModel data;
  final HeadersModel headers;
  final String url;

  SampleResponseModel.fromJson(Map<String, dynamic> json) :
        data =  SampleRequestModel.fromJson(json['data']),
        headers = HeadersModel.fromJson(json['headers']),
        url = json['url'];
}

class HeadersModel {
  final String forwardedProto;
  final String forwardedPort;
  final String amznTraceId;
  final String contentLength;
  final String userAgent;
  final String acceptEncoding;

  HeadersModel.fromJson(Map<String, dynamic> json) :
        forwardedProto = json['x-forwarded-proto'],
        forwardedPort = json['x-forwarded-port'],
        amznTraceId = json['x-amzn-trace-id'],
        contentLength = json['content-length'],
        userAgent = json['user-agent'],
        acceptEncoding = json['accept-encoding'];
}