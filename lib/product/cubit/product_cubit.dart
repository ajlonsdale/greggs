import 'package:api/api.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:products_repository/products_repository.dart';

part 'product_cubit.freezed.dart';
part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit({required ProductsRepository productsRepo})
      : _productsRepo = productsRepo,
        super(const ProductState());

  final ProductsRepository _productsRepo;

  Future<void> findProduct() async {
    try {
      emit(state.copyWith(isLoading: true));
      final product = await _productsRepo.findProduct();
      emit(
        state.copyWith(
          isLoading: false,
          product: product,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          isError: true,
        ),
      );
    }
  }
}
