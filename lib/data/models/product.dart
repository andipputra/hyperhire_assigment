

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required int rank,
    required String name,
    required List<String> comment,
    required double reviewScore,
    required int reviewCount,
  }) = _Product;
}