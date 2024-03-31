import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 's',
      apiUrl:
          'https://api.mapbox.com/directions-matrix/v1/mapbox/walking/-122.418563,37.751659;-122.422969,37.75529;-122.426904,37.759617?sources=1&annotations=distance,duration&access_token=pk.eyJ1IjoicmF6YXdlYmRlc2lnbmVyIiwiYSI6ImNsdWF1YWQ4NjBvazUya3BuenFuMzA4M2IifQ.kjI4fkrklpQIJ4acaLeHLg',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class DCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'd',
      apiUrl:
          'https://api.mapbox.com/directions-matrix/v1/mapbox/driving/-122.42,37.78;-122.45,37.91;-122.48,37.73?approaches=curb;curb;curb',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'access_token':
            "pk.eyJ1IjoicmF6YXdlYmRlc2lnbmVyIiwiYSI6ImNsdWF1YWQ4NjBvazUya3BuenFuMzA4M2IifQ.kjI4fkrklpQIJ4acaLeHLg",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
