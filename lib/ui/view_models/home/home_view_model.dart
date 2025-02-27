import 'package:hyperhire_assigment/data/models/banner.dart';
import 'package:hyperhire_assigment/data/repositories/home_repository.dart';
import 'package:hyperhire_assigment/ui/view_models/home/home_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_view_model.g.dart';

@Riverpod(keepAlive: true)
class HomeViewModel extends _$HomeViewModel {
  @override
  Future<HomeState> build() async {
    state = AsyncLoading();

    final bannerData = await _getBannerData();

    return HomeState(listBanner: bannerData, currentBannerIndex: 0);
  }

  Future<List<BannerData>> _getBannerData() async {
    return ref.read(homeRepositoryProvider).getBannerData();
  }

  void setCurrentBannerIndex(int index) {
    state = AsyncData(state.value?.copyWith(currentBannerIndex: index));
  }
}
