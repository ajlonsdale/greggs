import 'dart:async';
import 'dart:developer';

import 'package:api/api.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:greggs/env/env.dart';
import 'package:products_repository/products_repository.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = const AppBlocObserver();

  _setupLocator();

  runApp(await builder());
}

final locator = GetIt.instance;

/// Creates all singleton insances that can be accessed throughout the
/// application.
void _setupLocator() {
  final client = ClientSdk(
    isDev: ENV.instance.isDev,
    baseUrl: ENV.instance.baseUrl,
  );
  locator
    ..registerLazySingleton<ProductsRepository>(
      () => ProductsRepository(productsService: client.api.products),
    )
    ..registerLazySingleton<ClientSdk>(() => client);
}
