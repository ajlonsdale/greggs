import 'dart:convert';
import 'dart:io';

import 'package:api/src/mock_network/product.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

/// Map of mock responses
Map<String, dynamic> responses = {
  '/api/v1/products': product,
};

/// A simple mock client to simulate API requests.
final mockClient = MockClient((request) async {
  await Future<void>.delayed(const Duration(milliseconds: 400));
  final result = responses[request.url.path];

  if (result == null) {
    return http.Response(json.encode({'error': 'not found'}), 404);
  }

  return http.Response(
    json.encode(result),
    200,
    headers: {
      HttpHeaders.contentTypeHeader: 'application/json; charset=utf-8',
    },
  );
});
