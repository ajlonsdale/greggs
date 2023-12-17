import 'package:flutter/material.dart';
import 'package:greggs/theme/_theme.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    required this.label,
    required this.backgroundColor,
    required this.forgroundColor,
    required this.onPressed,
    this.width,
    this.trailing,
    super.key,
  });

  const AppButton.primary({
    required this.label,
    required this.onPressed,
    this.width,
    this.trailing,
    super.key,
  })  : backgroundColor = AppColors.yellow,
        forgroundColor = AppColors.black;

  const AppButton.secondary({
    required this.label,
    required this.onPressed,
    this.width,
    this.trailing,
    super.key,
  })  : backgroundColor = AppColors.lightGrey,
        forgroundColor = AppColors.blue;

  final String label;
  final Widget? trailing;
  final double? width;
  final Color backgroundColor;
  final Color forgroundColor;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return SizedBox(
      height: 52,
      child: FilledButton(
        onPressed: onPressed,
        style: FilledButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: forgroundColor,
          fixedSize: width != null ? Size(width!, 52) : null,
          padding: const EdgeInsets.all(10),
          textStyle: theme.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w700,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.borderRadius),
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Center(child: Text(label)),
            if (trailing != null) Positioned(right: 0, child: trailing!),
          ],
        ),
      ),
    );
  }
}
