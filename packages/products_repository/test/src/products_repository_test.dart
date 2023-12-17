import 'package:api/api.dart';
import 'package:chopper/chopper.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:products_repository/products_repository.dart';

import '../mock_network/client.dart';
import '../mock_network/product.dart';

void main() {
  final productsService = ProductsService.create(
    ChopperClient(
      client: MockApiClient.create(
        responses: {
          '/products': product,
        },
      ),
      converter: ApplicationConvertor(),
    ),
  );

  group('ProductsRepository', () {
    test('can be instantiated', () {
      expect(
        ProductsRepository(productsService: productsService),
        isNotNull,
      );
    });

    ProductsRepository createProductsRepo() => ProductsRepository(
          productsService: productsService,
        );

    group('findProduct', () {
      test('instance of product is returned', () {
        final productsRepo = createProductsRepo();

        expect(
          productsRepo.findProduct(),
          isInstanceOf<Future<ProductModel>>(),
        );
      });
    });
  });
}
