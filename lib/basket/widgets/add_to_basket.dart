import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greggs/basket/_basket.dart';
import 'package:greggs/l10n/l10n.dart';
import 'package:greggs/product/cubit/product_cubit.dart';
import 'package:greggs/theme/_theme.dart';

class AddToBasket extends StatelessWidget {
  const AddToBasket({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const CircularProgressIndicator();
        }

        if (state.isError) {
          return const _Error();
        }

        if (state.product == null) {
          return const _Error();
        }

        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () => context.read<BasketBloc>().add(
                    BasketEvent.basketItemAdded(
                      item: BasketItemModel(
                        product: state.product!,
                      ),
                    ),
                  ),
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 8),
          ],
        );
      },
    );
  }
}

class _Error extends StatelessWidget {
  const _Error();

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final l10n = context.l10n;

    return GestureDetector(
      onTap: () => context.read<ProductCubit>().findProduct(),
      child: Container(
        width: 200,
        height: 200,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColors.red,
          borderRadius: BorderRadius.circular(AppDimensions.borderRadius),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              l10n.productErrorTitle,
              style: theme.textTheme.titleSmall?.copyWith(
                color: AppColors.white,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              l10n.productErrorDescription,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: AppColors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              l10n.productErrorRetry,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleSmall?.copyWith(
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
