import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class PaymentCall {
  static Future<ApiCallResponse> call({
    String? amount = '',
    String? email = '',
  }) {
    final ffApiRequestBody = '''
{
  "amount": "${amount}",
  "email": "${email}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Payment',
      apiUrl: 'https://api.paystack.co/transaction/initialize',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer sk_test_112f61cfa61452e5d573cad43265426e0e4bdf5d',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic paymentLink(dynamic response) => getJsonField(
        response,
        r'''$.data.authorization_url''',
      );
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
