import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greggs/basket/_basket.dart';
import 'package:greggs/l10n/l10n.dart';
import 'package:greggs/theme/_theme.dart';

@RoutePage()
class BasketPage extends StatelessWidget {
  const BasketPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onTap: () => Navigator.pop(context),
        ),
        title: Text(
          l10n.basketTitle,
          style: theme.textTheme.titleLarge?.copyWith(
            color: AppColors.white,
          ),
        ),
        backgroundColor: AppColors.blue,
      ),
      bottomSheet: const BasketFooter(),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(vertical: 7),
            decoration: const BoxDecoration(
              color: AppColors.white,
              border: Border(
                bottom: BorderSide(
                  color: AppColors.lightGrey,
                ),
              ),
            ),
            child: Text(
              l10n.basketCalorieInformation,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: AppColors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const _EatingIn(),
          const Expanded(child: BasketList()),
        ],
      ),
    );
  }
}

class _EatingIn extends StatelessWidget {
  const _EatingIn();

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final l10n = context.l10n;

    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 7),
      decoration: const BoxDecoration(
        color: AppColors.white,
        border: Border(
          bottom: BorderSide(
            color: AppColors.lightGrey,
          ),
        ),
      ),
      child: BlocSelector<BasketBloc, BasketState, bool>(
        selector: (state) => state.eatingIn,
        builder: (context, state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                l10n.basketEatingOut,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: AppColors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 10),
              CupertinoSwitch(
                value: state,
                activeColor: AppColors.blue,
                onChanged: (value) => context.read<BasketBloc>().add(
                      BasketEvent.eatingLocationChanged(value: !state),
                    ),
              ),
              const SizedBox(width: 10),
              Text(
                l10n.basketEatingIn,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: AppColors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
