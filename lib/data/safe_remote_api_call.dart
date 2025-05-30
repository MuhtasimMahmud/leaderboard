import 'package:flutter_core_module/mixin/logger.dart';
import 'package:get/get.dart';

import 'i_remote_data_provider.dart';

class SafeRemoteApiCall extends IRemoteDataProvider with AppLogger {

  @override
  Future<Response<dynamic>?> receiveData(String path,
      {bool? checkVersionUpdate = false}) async {
    initDecoder((data) => data, checkVersionUpdate: checkVersionUpdate);
    return await getData(path);
  }

  Future<Response<dynamic>?> receiveDataWithAuthorization(String path,
      {bool? checkVersionUpdate = false,
      Map<String, dynamic>? queryParam}) async {
    initDecoder((data) => data, checkVersionUpdate: checkVersionUpdate);
    return await getDataWithAuthorization(path, queryParam: queryParam);
  }

  @override
  Future<Response<dynamic>?> saveData(String path, data,
      {bool? checkVersionUpdate = false}) async {
    initDecoder((response) => response, checkVersionUpdate: checkVersionUpdate);
    return await postDataWithAuthorization(path, data);
  }

  Future<Response<dynamic>?> saveDataWithoutAuthorization(String path, data,
      {bool? checkVersionUpdate = false}) async {
    initDecoder((response) => response, checkVersionUpdate: checkVersionUpdate);
    return await postData(path, data);
  }

  Future<Response<dynamic>?> patchData(String path,
      {data, bool? checkVersionUpdate = false}) async {
    initDecoder((data) => data, checkVersionUpdate: checkVersionUpdate);
    return await patchDataWithAuthorization(path, data: data);
  }

  Future<Response<dynamic>?> putData(String path,
      {data, bool? checkVersionUpdate = false}) async {
    initDecoder((data) => data, checkVersionUpdate: checkVersionUpdate);
    return await putDataWithAuthorization(path, data: data);
  }

  Future<Response<dynamic>?> uploadFile(String path, body) async {
    initDecoder((data) => data);
    final Response<dynamic>? response = await postMultipartData(path, body);
    printDebugLog("response: $response");
    return response;
  }

  Future<Response<dynamic>?> uploadFileWithProgress(String path, body,
      {Function? progress}) async {
    initDecoder((data) => data);
    final Response<dynamic>? response =
        await postMultipartData(path, body, progress: progress);
    printDebugLog("response: $response");
    return response;
  }
}
