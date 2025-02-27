
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyperhire_assigment/data/models/product.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required Product latestReviewedProduct,
  }) = _ProfileState;
}