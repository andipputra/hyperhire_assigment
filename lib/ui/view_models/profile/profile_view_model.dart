import 'package:hyperhire_assigment/data/models/product.dart';
import 'package:hyperhire_assigment/data/repositories/product_repository.dart';
import 'package:hyperhire_assigment/ui/view_models/profile/profile_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_view_model.g.dart';

@riverpod
class ProfileViewModel extends _$ProfileViewModel {
  @override
  Future<ProfileState> build() async {
    state = AsyncLoading();

    final latestReviewedProduct = await _getLatestReviewedProduct();

    return ProfileState(latestReviewedProduct: latestReviewedProduct);
  }

  Future<Product> _getLatestReviewedProduct() async {
    return ref.read(productRepositoryProvider).getLatestRevieweProduct();
  }
}
