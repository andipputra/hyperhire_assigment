import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner.freezed.dart';

@freezed
class BannerData with _$BannerData {
  const factory BannerData({
    required String image,
  }) = _BannerData;
}