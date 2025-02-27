import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hyperhire_assigment/data/models/banner.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_repository.g.dart';

@riverpod
HomeRepository homeRepository(Ref ref) => HomeRepository();

class HomeRepository {
  Future<List<BannerData>> getBannerData() async {
    return [
      BannerData(image: 'banner_1.png'),
      BannerData(image: 'banner_2.png'),
      BannerData(image: 'banner_3.png'),
      BannerData(image: 'banner_4.png'),
    ];
  }
}
