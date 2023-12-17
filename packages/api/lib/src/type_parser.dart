import 'package:flutter/foundation.dart';

/// The type definition for the Json factories
typedef JsonFactory<T> = T Function(Map<String, dynamic> json);

/// {@template custom_json_decoder}
/// Handles the conversion of raw JSON into their respective models.
/// {@endtemplate}
class CustomJsonDecoder {
  /// {@macro custom_json_decoder}
  CustomJsonDecoder({required Map<Type, JsonFactory<dynamic>> factories})
      : _factories = factories;

  final Map<Type, JsonFactory<dynamic>> _factories;

  /// Maps JSON into its respective model.
  T decode<T, InnerType>(dynamic entity) {
    if (entity is Iterable) {
      final res = _decodeList<T, InnerType>(entity);
      return res;
    }

    if (entity is T) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T, InnerType>(entity);
    }

    return entity as T;
  }

  T _decodeMap<T, InnerType>(Map<String, dynamic> values) {
    JsonFactory<dynamic>? jsonFactory;
    if (T == List<InnerType>) {
      jsonFactory = _factories[InnerType];
      _handleError<InnerType>(jsonFactory);
    } else {
      jsonFactory = _factories[T];
      _handleError<T>(jsonFactory);
    }

    return jsonFactory!(values) as T;
  }

  void _handleError<E>(JsonFactory<dynamic>? jsonFactory) {
    if (jsonFactory == null || jsonFactory is! JsonFactory<E>) {
      debugPrint(
        '⚠️ No Json factory found for type $E, please add it to the factories '
        'in json_factories.dart ⚠️',
      );

      throw Exception(
        "Could not find factory for type $E. Is '$E: $E.fromJsonFactory' "
        'included in the CustomJsonDecoder instance creation in '
        'bootstrapper.dart?',
      );
    }
  }

  T _decodeList<T, InnerType>(Iterable<dynamic> values) => values
      .where((dynamic v) => v != null)
      .map<InnerType>((dynamic v) => decode<InnerType, InnerType>(v))
      .toList() as T;
}
