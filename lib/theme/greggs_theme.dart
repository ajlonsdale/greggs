import 'package:flutter/material.dart';
import 'package:greggs/theme/app_colors.dart';
import 'package:greggs/theme/typography.dart';

class GreggsTheme {
  static ThemeData get light => ThemeData(
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          elevation: 0,
          iconTheme: const IconThemeData(
            color: AppColors.blue,
            size: 30,
          ),
          titleTextStyle: typography.titleLarge?.copyWith(
            color: AppColors.blue,
          ),
        ),
        textTheme: typography,
        colorScheme: const ColorScheme.light(
          primary: AppColors.blue,
          primaryContainer: AppColors.blue,
          onPrimaryContainer: AppColors.yellow,
          secondary: AppColors.yellow,
          onSecondary: AppColors.white,
          secondaryContainer: AppColors.yellow,
          onSecondaryContainer: AppColors.white,
          error: AppColors.red,
          errorContainer: AppColors.red,
          onErrorContainer: AppColors.white,
          background: AppColors.offWhite,
          onBackground: AppColors.textBlack,
          onSurface: AppColors.textBlack,
          surfaceVariant: AppColors.black,
          onSurfaceVariant: AppColors.white,
          outline: AppColors.yellow,
          shadow: AppColors.lightGrey,
          inverseSurface: AppColors.black,
          onInverseSurface: AppColors.white,
          inversePrimary: AppColors.yellow,
        ),
      );
}
