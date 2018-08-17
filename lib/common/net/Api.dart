import 'dart:collection';

import 'package:dio/dio.dart';
import 'package:flutter_app/common/net/Core.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_app/common/net/ResultData.dart';

class HttpManager {

  static final String HOST = "http://gank.io/api";
  static final String FEED_URL = "http://gank.io/api/data/";
  static final String SEARCH_URL = "http://gank.io/api/search/query/";
  static const CONTENT_TYPE_JSON = "applocation/json";

  static netFetch(url, params, Map<String, String> header, Options option,
      {noTip = false}) async {
    var connectResult = await (new Connectivity().checkConnectivity());
    if (connectResult == ConnectivityResult.none) {
      return new ResultData(
          Code.errorHandleFunction(Code.NETWORK_ERROR, "", noTip),
          false,
          Code.NETWORK_ERROR);
    }

    Map<String, String> headers = new HashMap();
    if (header != null) {
      headers.addAll(header);
    }

    if (option != null) {
      option.headers = headers;
    } else {
      option = new Options(method: "get");
      option.headers = headers;
    }

    Dio dio = new Dio();
    Response response;
    try {
      response = await dio.request(url, data: params, options: option);
    } on DioError catch (e) {
      Response errorResponse;
      if (e.response != null) {
        errorResponse = e.response;
      } else {
        errorResponse = new Response(statusCode: 520);
      }

      if (e.type == DioErrorType.CONNECT_TIMEOUT) {
        errorResponse.statusCode = Code.NETWORK_TIMEOUT;
      }
      return new ResultData(
          Code.errorHandleFunction(errorResponse.statusCode, e.message, noTip),
          false,
          errorResponse.statusCode);
    }

    try {
      if (option.contentType != null &&
          option.contentType.primaryType == "text") {
        return new ResultData(response.data, true, Code.SUCCESS);
      } else {
        var responseJson = response.data;
      }

      if (response.statusCode == 200) {
        return new ResultData(response.data, true, Code.SUCCESS,
            headers: response.headers);
      }
    } catch (e) {
      return new ResultData(response.data, false, response.statusCode,
          headers: response.headers);
    }
    return new ResultData(Code.errorHandleFunction(response.statusCode, "", noTip), false, response.statusCode);
  }
}
