import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greggs/basket/bloc/basket_bloc.dart';
import 'package:greggs/basket/models/basket_item/basket_item.model.dart';
import 'package:greggs/basket/widgets/basket_item.dart';
import 'package:greggs/l10n/l10n.dart';
import 'package:greggs/theme/_theme.dart';

class BasketList extends StatelessWidget {
  const BasketList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<BasketBloc, BasketState, List<BasketItemModel>>(
      selector: (state) => state.items,
      builder: (context, basketItems) {
        if (basketItems.isEmpty) {
          return const _NoItems();
        }

        return ListView.builder(
          shrinkWrap: true,
          itemCount: basketItems.length,
          itemBuilder: (context, index) {
            return BasketItem(
              basketItem: basketItems[index],
            );
          },
        );
      },
    );
  }
}

class _NoItems extends StatelessWidget {
  const _NoItems();

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final l10n = context.l10n;

    return SizedBox(
      width: 250,
      child: Column(
        children: [
          const SizedBox(height: 40),
          Text(
            l10n.basketNoItemsTitle,
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(height: 10),
          Text(
            l10n.basketNoItemsDescription,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
