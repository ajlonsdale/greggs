import 'package:flutter/material.dart';
import 'package:greggs/theme/_theme.dart';

class QuantityTicker extends StatelessWidget {
  const QuantityTicker({
    required this.quantity,
    this.style,
    super.key,
  });

  final int quantity;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return AnimatedSwitcher(
      switchInCurve: Curves.easeInOutCirc,
      duration: const Duration(milliseconds: 200),
      transitionBuilder: (
        Widget child,
        Animation<double> animation,
      ) {
        return ScaleTransition(
          scale: animation,
          child: child,
        );
      },
      child: Text(
        '$quantity',
        key: ValueKey<int>(quantity),
        style: style ??
            theme.textTheme.bodyMedium?.copyWith(
              color: AppColors.black,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
