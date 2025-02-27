// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Product {
  int get rank => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<String> get comment => throw _privateConstructorUsedError;
  double get reviewScore => throw _privateConstructorUsedError;
  int get reviewCount => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  List<String> get tag => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call({
    int rank,
    String brand,
    String type,
    List<String> comment,
    double reviewScore,
    int reviewCount,
    String image,
    List<String> tag,
  });
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rank = null,
    Object? brand = null,
    Object? type = null,
    Object? comment = null,
    Object? reviewScore = null,
    Object? reviewCount = null,
    Object? image = null,
    Object? tag = null,
  }) {
    return _then(
      _value.copyWith(
            rank:
                null == rank
                    ? _value.rank
                    : rank // ignore: cast_nullable_to_non_nullable
                        as int,
            brand:
                null == brand
                    ? _value.brand
                    : brand // ignore: cast_nullable_to_non_nullable
                        as String,
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String,
            comment:
                null == comment
                    ? _value.comment
                    : comment // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            reviewScore:
                null == reviewScore
                    ? _value.reviewScore
                    : reviewScore // ignore: cast_nullable_to_non_nullable
                        as double,
            reviewCount:
                null == reviewCount
                    ? _value.reviewCount
                    : reviewCount // ignore: cast_nullable_to_non_nullable
                        as int,
            image:
                null == image
                    ? _value.image
                    : image // ignore: cast_nullable_to_non_nullable
                        as String,
            tag:
                null == tag
                    ? _value.tag
                    : tag // ignore: cast_nullable_to_non_nullable
                        as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
    _$ProductImpl value,
    $Res Function(_$ProductImpl) then,
  ) = __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int rank,
    String brand,
    String type,
    List<String> comment,
    double reviewScore,
    int reviewCount,
    String image,
    List<String> tag,
  });
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
    _$ProductImpl _value,
    $Res Function(_$ProductImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rank = null,
    Object? brand = null,
    Object? type = null,
    Object? comment = null,
    Object? reviewScore = null,
    Object? reviewCount = null,
    Object? image = null,
    Object? tag = null,
  }) {
    return _then(
      _$ProductImpl(
        rank:
            null == rank
                ? _value.rank
                : rank // ignore: cast_nullable_to_non_nullable
                    as int,
        brand:
            null == brand
                ? _value.brand
                : brand // ignore: cast_nullable_to_non_nullable
                    as String,
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String,
        comment:
            null == comment
                ? _value._comment
                : comment // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        reviewScore:
            null == reviewScore
                ? _value.reviewScore
                : reviewScore // ignore: cast_nullable_to_non_nullable
                    as double,
        reviewCount:
            null == reviewCount
                ? _value.reviewCount
                : reviewCount // ignore: cast_nullable_to_non_nullable
                    as int,
        image:
            null == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                    as String,
        tag:
            null == tag
                ? _value._tag
                : tag // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$ProductImpl implements _Product {
  const _$ProductImpl({
    required this.rank,
    required this.brand,
    required this.type,
    required final List<String> comment,
    required this.reviewScore,
    required this.reviewCount,
    required this.image,
    required final List<String> tag,
  }) : _comment = comment,
       _tag = tag;

  @override
  final int rank;
  @override
  final String brand;
  @override
  final String type;
  final List<String> _comment;
  @override
  List<String> get comment {
    if (_comment is EqualUnmodifiableListView) return _comment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comment);
  }

  @override
  final double reviewScore;
  @override
  final int reviewCount;
  @override
  final String image;
  final List<String> _tag;
  @override
  List<String> get tag {
    if (_tag is EqualUnmodifiableListView) return _tag;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tag);
  }

  @override
  String toString() {
    return 'Product(rank: $rank, brand: $brand, type: $type, comment: $comment, reviewScore: $reviewScore, reviewCount: $reviewCount, image: $image, tag: $tag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._comment, _comment) &&
            (identical(other.reviewScore, reviewScore) ||
                other.reviewScore == reviewScore) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._tag, _tag));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    rank,
    brand,
    type,
    const DeepCollectionEquality().hash(_comment),
    reviewScore,
    reviewCount,
    image,
    const DeepCollectionEquality().hash(_tag),
  );

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);
}

abstract class _Product implements Product {
  const factory _Product({
    required final int rank,
    required final String brand,
    required final String type,
    required final List<String> comment,
    required final double reviewScore,
    required final int reviewCount,
    required final String image,
    required final List<String> tag,
  }) = _$ProductImpl;

  @override
  int get rank;
  @override
  String get brand;
  @override
  String get type;
  @override
  List<String> get comment;
  @override
  double get reviewScore;
  @override
  int get reviewCount;
  @override
  String get image;
  @override
  List<String> get tag;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
