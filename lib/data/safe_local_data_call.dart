import 'package:flutter/material.dart';

import 'i_local_data_provider.dart';

class SafeLocalCall extends ILocalDataProvider {
  @override
  Future<dynamic> receiveData(String path,
      {bool? checkVersionUpdate = false}) async {
   // return getMapDataToNoSqlDatabase(path);
  }

  Future<dynamic> receiveStringData(String path) async {
   // return getStringDataToNoSqlDatabase(path);
  }


  @override
  Future<dynamic> saveData(String path, data) async {
    debugPrint("sendData called from local data provider");
    if (data is Map) {
     // saveMapDataToNoSqlDatabase(path, data);
    } else if (data is String) {
     // saveStringDataToNoSqlDatabase(path, data);
    }
    return null;
  }
}
