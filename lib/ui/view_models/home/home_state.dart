import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyperhire_assigment/data/models/banner.dart';
import 'package:hyperhire_assigment/data/models/product.dart';
import 'package:hyperhire_assigment/data/models/user.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<BannerData> listBanner,
    @Default(0) int currentBannerIndex,
    @Default([]) List<Product> topProducts,
    @Default([]) List<User> topReviewers,
  }) = _HomeState;
}
