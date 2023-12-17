import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greggs/basket/_basket.dart';
import 'package:greggs/l10n/l10n.dart';
import 'package:greggs/theme/_theme.dart';

class BasketItem extends StatelessWidget {
  const BasketItem({required this.basketItem, super.key});

  final BasketItemModel basketItem;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = context.theme;

    return Container(
      padding: const EdgeInsets.all(17),
      decoration: const BoxDecoration(
        color: AppColors.white,
        border: Border(
          bottom: BorderSide(
            color: AppColors.lightGrey,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 80,
                width: 80,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: const Color(0XFFF9F9F9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: CachedNetworkImage(
                  imageUrl: basketItem.product.thumbnailUri,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    basketItem.product.articleName,
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: AppColors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 20),
                  BlocSelector<BasketBloc, BasketState, bool>(
                    selector: (state) => state.eatingIn,
                    builder: (context, eatingIn) {
                      return Text(
                        l10n.price(
                          eatingIn
                              ? basketItem.product.eatInPrice
                              : basketItem.product.eatOutPrice,
                        ),
                        style: theme.textTheme.bodyLarge?.copyWith(
                          color: AppColors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          BasketQuantity(
            articleCode: basketItem.product.articleCode,
            quantity: basketItem.quantity,
          ),
        ],
      ),
    );
  }
}
