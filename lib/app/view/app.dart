import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greggs/basket/bloc/basket_bloc.dart';
import 'package:greggs/l10n/l10n.dart';
import 'package:greggs/navigation/navigation.dart';
import 'package:greggs/theme/greggs_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BasketBloc(),
        ),
      ],
      child: MaterialApp.router(
        theme: GreggsTheme.light,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        routerConfig: AppRouter().config(),
      ),
    );
  }
}
