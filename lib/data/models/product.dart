

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required int rank,
    required String brand,
    required String type,
    required List<ProductComment> comment,
    required double reviewScore,
    required int reviewCount,
    required String image,
    required List<String> tag,
    String? reviewTime,
  }) = _Product;
}

@freezed
class ProductComment with _$ProductComment {
  const factory ProductComment({
    required String comment,
    @Default([]) List<String> images,
  }) = _ProductComment;
}