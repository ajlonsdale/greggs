import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greggs/basket/bloc/basket_bloc.dart';
import 'package:greggs/basket/widgets/quantity_ticker.dart';
import 'package:greggs/theme/_theme.dart';

class BasketQuantity extends StatelessWidget {
  const BasketQuantity({
    required this.quantity,
    required this.articleCode,
    super.key,
  });

  final int quantity;
  final String articleCode;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.yellow),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          _QuantityButton(
            icon: Icons.remove,
            onTap: () => context.read<BasketBloc>().add(
                  BasketEvent.quantityChanged(
                    articleCode: articleCode,
                    quantity: -1,
                  ),
                ),
          ),
          Container(
            color: AppColors.white,
            width: 42,
            child: Center(
              child: QuantityTicker(
                quantity: quantity,
              ),
            ),
          ),
          _QuantityButton(
            icon: Icons.add,
            onTap: () => context.read<BasketBloc>().add(
                  BasketEvent.quantityChanged(
                    articleCode: articleCode,
                    quantity: 1,
                  ),
                ),
          ),
        ],
      ),
    );
  }
}

class _QuantityButton extends StatelessWidget {
  const _QuantityButton({
    required this.icon,
    required this.onTap,
  });

  final IconData icon;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 42,
        width: 42,
        color: AppColors.yellow,
        child: Icon(
          icon,
          color: Colors.black,
        ),
      ),
    );
  }
}
