# Greggs Application

If you love sausage rolls then you're in the right place 🎉

This application is an adaptation of the Hello World flutter base example that adds as many sausage rolls as you'd like to a basket using the plus button.

## Features

- Bloc library to handle ~~sausage~~ APPLICATION state.
- Flutter flavours and ENV feature to load different versions of the application depending on the environment you're working in.
- L10n to localize static application text.
- Greggs material theme.

## Running the application 🚀

```dart
# Development
$ flutter run --flavor development --target lib/main_development.dart

# Staging
$ flutter run --flavor staging --target lib/main_staging.dart

# Production
$ flutter run --flavor production --target lib/main_production.dart
```

## Future features

- More extensive testing to cover more features.
- Firebase for crashlytics OR Sentry
- Improving error messages to increase user experience.
- Promtional sausage rolls to be added when certain price thresholds are met. eg saus-rick roll.. he'll never give you up...


