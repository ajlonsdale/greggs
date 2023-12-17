import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greggs/basket/bloc/basket_bloc.dart';
import 'package:greggs/basket/widgets/quantity_ticker.dart';
import 'package:greggs/navigation/navigation.dart';
import 'package:greggs/theme/_theme.dart';

class BasketButton extends StatelessWidget {
  const BasketButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return GestureDetector(
      onTap: () => context.router.push(const BasketRoute()),
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Stack(
          children: [
            const Icon(Icons.shopping_bag_outlined),
            Positioned(
              top: 0,
              right: -2,
              child: BlocSelector<BasketBloc, BasketState, int>(
                selector: (state) => state.totalItems,
                builder: (context, state) => AnimatedSwitcher(
                  duration: const Duration(milliseconds: 200),
                  switchInCurve: Curves.easeInOutCirc,
                  transitionBuilder: (child, animation) =>
                      ScaleTransition(scale: animation, child: child),
                  child: state > 0
                      ? Container(
                          width: 20,
                          decoration: BoxDecoration(
                            color: AppColors.yellow,
                            border: Border.all(
                              color: AppColors.white,
                              width: 2,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: QuantityTicker(
                            quantity: state,
                            style: theme.textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      : const SizedBox(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
