import 'package:api/src/models/product/product.model.dart';
import 'package:chopper/chopper.dart';

part 'products.service.chopper.dart';

/// Handles all product related http requests.
@ChopperApi(baseUrl: '/products')
abstract class ProductsService extends ChopperService {
  /// Creates a [ProductsService] instance.
  static ProductsService create([ChopperClient? client]) =>
      _$ProductsService(client);

  /// Finds a product by Article Code.
  ///
  /// In the interest of this example application the id parameter has been
  /// omitted.
  ///
  /// Future versions would look like this:
  /// ```
  /// @Get(path: '/{articleCode}')
  /// Future<Response<ProductModel>> findProduct({
  ///  @Path('articleCode') String articleCode,
  /// });
  /// ```
  @Get()
  Future<Response<ProductModel>> findProduct();
}
