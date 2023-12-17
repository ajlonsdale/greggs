import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greggs/basket/bloc/basket_bloc.dart';
import 'package:greggs/basket/widgets/quantity_ticker.dart';
import 'package:greggs/core/widgets/app_button.dart';
import 'package:greggs/l10n/l10n.dart';
import 'package:greggs/theme/_theme.dart';

class BasketFooter extends StatelessWidget {
  const BasketFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(
        top: AppDimensions.padding,
        left: AppDimensions.padding,
        right: AppDimensions.padding,
        bottom: MediaQueryData.fromView(View.of(context)).padding.bottom + 20,
      ),
      decoration: const BoxDecoration(
        color: AppColors.white,
        border: Border(
          top: BorderSide(
            width: 2,
            color: AppColors.lightGrey,
          ),
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: _CancelOrder()),
          SizedBox(width: 20),
          _Checkout(),
        ],
      ),
    );
  }
}

class _CancelOrder extends StatelessWidget {
  const _CancelOrder();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return AppButton.secondary(
      label: l10n.basketCancelOrderButtonLabel,
      onPressed: () => context.read<BasketBloc>().add(
            const BasketEvent.orderCancelled(),
          ),
    );
  }
}

class _Checkout extends StatelessWidget {
  const _Checkout();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BlocBuilder<BasketBloc, BasketState>(
      builder: (context, state) {
        final price =
            state.eatingIn ? state.totalEatInPrice : state.totalEatOutPrice;

        return AppButton.primary(
          onPressed: () {},
          label: '${l10n.basketCheckoutButtonLabel} - ${l10n.price(
            price.toStringAsFixed(2),
          )}',
          width: MediaQuery.of(context).size.width * 0.55,
          trailing: Container(
            width: 27,
            height: 27,
            decoration: const BoxDecoration(
              color: AppColors.darkYellow,
              shape: BoxShape.circle,
            ),
            child: QuantityTicker(quantity: state.totalItems),
          ),
        );
      },
    );
  }
}
