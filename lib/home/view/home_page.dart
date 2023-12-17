import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greggs/assets/assets.dart';
import 'package:greggs/basket/_basket.dart';
import 'package:greggs/bootstrap.dart';
import 'package:greggs/l10n/l10n.dart';
import 'package:greggs/product/_product.dart';
import 'package:greggs/theme/_theme.dart';
import 'package:products_repository/products_repository.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProductCubit(
        productsRepo: locator<ProductsRepository>(),
      )..findProduct(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = context.theme;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.homeAppBarTitle),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset(Assets.emblem),
        ),
        leadingWidth: 30,
        actions: const [BasketButton()],
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                l10n.homeWelcomeMessage,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.blue,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                l10n.homeWelcomeDescription,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                l10n.homeBonAppetit,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: const AddToBasket(),
    );
  }
}
