import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

/// Mock api client to be used for testing.
class MockApiClient extends MockClient {
  MockApiClient.create({required Map<String, dynamic> responses})
      : super(
          (request) async {
            final result = responses[request.url.path];

            if (result == null) {
              return http.Response(json.encode({'error': 'not found'}), 404);
            }

            return http.Response(
              json.encode(result),
              200,
              headers: {
                HttpHeaders.contentTypeHeader:
                    'application/json; charset=utf-8',
              },
            );
          },
        );
}
