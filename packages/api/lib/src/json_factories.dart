import 'package:api/src/models/product/product.model.dart';
import 'package:api/src/type_parser.dart';

/// JSON serialization factories
final Map<Type, JsonFactory<ProductModel>> factories = {
  ProductModel: ProductModel.fromJson,
};
