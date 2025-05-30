import 'dart:developer';
import 'package:flutter_core_module/data/i_data_provider.dart';
import 'package:flutter_core_module/perfkey/core_pref_key.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';
import 'package:get_storage/get_storage.dart';

abstract class IRemoteDataProvider extends GetConnect implements IDataProvider {
  GetStorage getStorage = GetStorage();

  @override
  void onInit() {
    super.onInit();
    httpClient.addResponseModifier<dynamic>(
        (Request<dynamic> request, Response<dynamic> response) {
      log('Response from: ${request.url}');
      log('Response Status: ${response.status.code}');
      log('Response Body: ${response.body}');
      return response;
    });
  }

  void initDecoder(Decoder? defaultDecoder,
      {String? accessToken, bool? checkVersionUpdate = false}) {
    httpClient.defaultDecoder = defaultDecoder;
    httpClient.timeout = const Duration(seconds: 120);
  //  httpClient.baseUrl = Environment.environment?.baseUrl;

  }

  Map<String, String> _getAuthorization(
      {String? contentType = 'application/json'}) {
    return {
      "Authorization":
          "Bearer ${getStorage.read(CorePrefKey.keyAccessToken) ?? ''}",
      'Content-type': contentType ?? 'application/json',
      'Accept': 'application/json'
    };
  }

  getData<T>(url) {
    return get<T>(url);
  }

  getDataWithAuthorization<T>(url,
      {String? contentType = 'application/json',
      Map<String, dynamic>? queryParam}) {
    return get<T>(url,
        headers: _getAuthorization(contentType: contentType),
        query: queryParam);
  }

  postData<T>(url, data, {String? contentType = 'application/json'}) {
    return post<T>(url, data, headers: {
      'Content-type': contentType ?? 'application/json',
    });
  }

  postDataWithAuthorization<T>(url, data) {
    return post<T>(url, data, headers: _getAuthorization());
  }

  patchDataWithAuthorization<T>(url, {data, query}) {
    return patch<T>(url, data, query: query, headers: _getAuthorization());
  }

  putDataWithAuthorization<T>(url, {data, query}) {
    return put<T>(url, data, query: query, headers: _getAuthorization());
  }

  postMultipartData<T>(url, data, {Function? progress}) {
    return post<T>(url, data, headers: _getBearerToken(),
        uploadProgress: (percent) {
      if (progress != null) {
        progress(percent);
      }
    });
  }

  Map<String, String> _getBearerToken() {
    return {
      "Authorization":
          "Bearer ${getStorage.read(CorePrefKey.keyAccessToken) ?? ''}",
    };
  }
}
