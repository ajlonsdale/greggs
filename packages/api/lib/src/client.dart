import 'dart:convert';

import 'package:api/src/api.dart';
import 'package:api/src/json_factories.dart';
import 'package:api/src/mock_network/client.dart';
import 'package:api/src/type_parser.dart';
import 'package:chopper/chopper.dart';

/// {@template clientSdk}
/// A wrapper around the generated api.
///
/// {@endtemplate}
class ClientSdk {
  /// {@macro clientSdk}
  ClientSdk({
    required String baseUrl,
    bool isDev = false,
  }) : api = Api.create(
          client: ChopperClient(
            client: mockClient,
            baseUrl: Uri.parse(baseUrl),
            interceptors: <dynamic>[
              if (isDev) CurlInterceptor(),
            ],
            converter: ApplicationConvertor(),
          ),
        );

  /// Used to access all services.
  final Api api;
}

/// Converts JSON responses into respective model
class ApplicationConvertor implements Converter {
  final CustomJsonDecoder _decoder = CustomJsonDecoder(factories: factories);

  @override
  Request convertRequest(Request request) => request;

  @override
  Response<BodyType> convertResponse<BodyType, InnerType>(
    Response<dynamic> response,
  ) {
    final dynamic jsonRes = json.decode(response.body as String);
    return response.copyWith<BodyType>(
      body: _decoder.decode<BodyType, InnerType>(jsonRes),
    );
  }
}
