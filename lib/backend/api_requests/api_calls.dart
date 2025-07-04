import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class VINDecoderCall {
  static Future<ApiCallResponse> call({
    String? numvin = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'VIN Decoder',
      apiUrl:
          'https://vpic.nhtsa.dot.gov/api/vehicles/decodevinvalues/${numvin}?format=json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? marca(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Results[:].Make''',
      ));
  static String? modelo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Results[:].Model''',
      ));
  static String? anio(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Results[:].ModelYear''',
      ));
  static String? tipo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Results[:].BodyClass''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
