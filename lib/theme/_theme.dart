import 'package:flutter/material.dart';

export 'app_colors.dart';
export 'app_dimensions.dart';
export 'greggs_theme.dart';

extension ThemeDataX on BuildContext {
  ThemeData get theme => Theme.of(this);
}
