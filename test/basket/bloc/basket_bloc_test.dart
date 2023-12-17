import 'package:api/api.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:greggs/basket/bloc/basket_bloc.dart';
import 'package:greggs/basket/models/basket_item/basket_item.model.dart';

void main() {
  group('Basket Bloc', () {
    final mockProduct = ProductModel(
      articleCode: '1000446',
      shopCode: '1234',
      availableFrom: DateTime.parse('2020-12-30T00:00:00Z'),
      availableUntil: DateTime.parse('2045-05-13T23:59:59Z'),
      eatOutPrice: 1.05,
      eatInPrice: 1.15,
      articleName: 'Sausage Roll',
      dayParts: ['Breakfast', 'Lunch', 'Evening'],
      internalDescription: 'Sausage Roll',
      customerDescription: 'The Nation’s favourite Sausage Roll.\n\nMuch '
          'likeElvis was hailed the King of Rock, many have appointed Greggs '
          'as the(unofficial) King of Sausage Rolls.\n\nFreshly baked in our '
          'shopsthroughout the day, this British classic is made from seasoned '
          'sausage meatwrapped in layers of crisp, golden puff pastry, as well '
          'as a large dollopof TLC. It’s fair to say, we’re proper proud of '
          'them.\n\nAnd that’s it. Noclever twist. No secret ingredient.'
          ' It’s how you like them, so that’s howwe make them.\n\n',
      imageUri:
          'https://articles.greggs.co.uk/images/1000446.png?1623244287449',
      thumbnailUri:
          'https://articles.greggs.co.uk/images/1000446-thumb.png?1623244287450',
    );

    BasketBloc createBloc() => BasketBloc();

    group('initialization', () {
      test('builds correctly', () => expect(createBloc, returnsNormally));

      test('initial state is correct', () {
        expect(createBloc().state, equals(const BasketState()));
      });
    });

    group('BasketItemAdded', () {
      blocTest<BasketBloc, BasketState>(
        'emits state including 1 basket item '
        '1 total item '
        'and correctly calculated price',
        build: createBloc,
        act: (bloc) => bloc.add(
          BasketEvent.basketItemAdded(
            item: BasketItemModel(
              product: mockProduct,
            ),
          ),
        ),
        expect: () => [
          BasketState(
            items: [BasketItemModel(product: mockProduct)],
            totalEatInPrice: mockProduct.eatInPrice,
            totalEatOutPrice: mockProduct.eatOutPrice,
            totalItems: 1,
          ),
        ],
      );

      blocTest<BasketBloc, BasketState>(
        'emits state including 1 basket item '
        '2 total items '
        'and correctly calculated price',
        build: createBloc,
        act: (bloc) => bloc
          ..add(
            BasketEvent.basketItemAdded(
              item: BasketItemModel(
                product: mockProduct,
              ),
            ),
          )
          ..add(
            BasketEvent.basketItemAdded(
              item: BasketItemModel(
                product: mockProduct,
              ),
            ),
          ),
        expect: () => [
          BasketState(
            items: [BasketItemModel(product: mockProduct)],
            totalEatOutPrice: mockProduct.eatOutPrice,
            totalEatInPrice: mockProduct.eatInPrice,
            totalItems: 1,
          ),
          BasketState(
            items: [BasketItemModel(product: mockProduct, quantity: 2)],
            totalEatOutPrice: mockProduct.eatOutPrice * 2,
            totalEatInPrice: mockProduct.eatInPrice * 2,
            totalItems: 2,
          ),
        ],
      );
    });

    group('QuantityChanged', () {
      blocTest<BasketBloc, BasketState>(
        'adds 1 product and increments quantity by 1 '
        'should emit state of 1 basket item with '
        'quantity 2 and correctly calculated price',
        build: createBloc,
        act: (bloc) => bloc
          ..add(
            BasketEvent.basketItemAdded(
              item: BasketItemModel(
                product: mockProduct,
              ),
            ),
          )
          ..add(
            BasketEvent.quantityChanged(
              articleCode: mockProduct.articleCode,
              quantity: 1,
            ),
          ),
        expect: () => [
          BasketState(
            items: [BasketItemModel(product: mockProduct)],
            totalEatOutPrice: mockProduct.eatOutPrice,
            totalEatInPrice: mockProduct.eatInPrice,
            totalItems: 1,
          ),
          BasketState(
            items: [BasketItemModel(product: mockProduct, quantity: 2)],
            totalEatOutPrice: mockProduct.eatOutPrice * 2,
            totalEatInPrice: mockProduct.eatInPrice * 2,
            totalItems: 2,
          ),
        ],
      );

      blocTest<BasketBloc, BasketState>(
        'adds 1 product and increments quantity by 4 '
        'should emit state of 1 basket item with '
        'quantity 5 and correctly calculated price',
        build: createBloc,
        act: (bloc) => bloc
          ..add(
            BasketEvent.basketItemAdded(
              item: BasketItemModel(
                product: mockProduct,
              ),
            ),
          )
          ..add(
            BasketEvent.quantityChanged(
              articleCode: mockProduct.articleCode,
              quantity: 4,
            ),
          ),
        expect: () => [
          BasketState(
            items: [BasketItemModel(product: mockProduct)],
            totalEatOutPrice: mockProduct.eatOutPrice,
            totalEatInPrice: mockProduct.eatInPrice,
            totalItems: 1,
          ),
          BasketState(
            items: [BasketItemModel(product: mockProduct, quantity: 5)],
            totalEatOutPrice: mockProduct.eatOutPrice * 5,
            totalEatInPrice: mockProduct.eatInPrice * 5,
            totalItems: 5,
          ),
        ],
      );

      blocTest<BasketBloc, BasketState>(
        'adds 1 product with quantity of 4 and decrements by 1 '
        'should emit state of 1 basket item with '
        'quantity 3 and correctly calculated price',
        build: createBloc,
        act: (bloc) => bloc
          ..add(
            BasketEvent.basketItemAdded(
              item: BasketItemModel(product: mockProduct, quantity: 4),
            ),
          )
          ..add(
            BasketEvent.quantityChanged(
              articleCode: mockProduct.articleCode,
              quantity: -1,
            ),
          ),
        expect: () => [
          BasketState(
            items: [BasketItemModel(product: mockProduct, quantity: 4)],
            totalEatOutPrice: mockProduct.eatOutPrice * 4,
            totalEatInPrice: mockProduct.eatInPrice * 4,
            totalItems: 4,
          ),
          BasketState(
            items: [BasketItemModel(product: mockProduct, quantity: 3)],
            totalEatOutPrice: mockProduct.eatOutPrice * 3,
            totalEatInPrice: mockProduct.eatInPrice * 3,
            totalItems: 3,
          ),
        ],
      );

      blocTest<BasketBloc, BasketState>(
        'adds 1 product with quantity of 1 and decrements by 1 '
        'should emit initial basket state',
        build: createBloc,
        act: (bloc) => bloc
          ..add(
            BasketEvent.basketItemAdded(
              item: BasketItemModel(product: mockProduct),
            ),
          )
          ..add(
            BasketEvent.quantityChanged(
              articleCode: mockProduct.articleCode,
              quantity: -1,
            ),
          ),
        expect: () => [
          BasketState(
            items: [BasketItemModel(product: mockProduct)],
            totalEatOutPrice: mockProduct.eatOutPrice,
            totalEatInPrice: mockProduct.eatInPrice,
            totalItems: 1,
          ),
          const BasketState(),
        ],
      );
    });
    group('OrderCancelled', () {
      blocTest<BasketBloc, BasketState>(
        'adds 1 product and then cancels order. '
        'should emit initial basket state',
        build: createBloc,
        act: (bloc) => bloc
          ..add(
            BasketEvent.basketItemAdded(
              item: BasketItemModel(
                product: mockProduct,
              ),
            ),
          )
          ..add(const BasketEvent.orderCancelled()),
        expect: () => [
          BasketState(
            items: [BasketItemModel(product: mockProduct)],
            totalEatOutPrice: mockProduct.eatOutPrice,
            totalEatInPrice: mockProduct.eatInPrice,
            totalItems: 1,
          ),
          const BasketState(),
        ],
      );
    });

    group('EatingLocationChanged', () {
      blocTest<BasketBloc, BasketState>(
        'Should emit eatingIn as true',
        build: createBloc,
        act: (bloc) => bloc.add(
          const BasketEvent.eatingLocationChanged(value: true),
        ),
        expect: () => [
          const BasketState(
            eatingIn: true,
          ),
        ],
      );

      blocTest<BasketBloc, BasketState>(
        'Should emit eatingIn as false',
        build: createBloc,
        act: (bloc) => bloc.add(
          const BasketEvent.eatingLocationChanged(value: false),
        ),
        expect: () => [
          const BasketState(),
        ],
      );
    });
  });
}
