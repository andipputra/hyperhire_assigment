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
  List<ProductComment> get comment => throw _privateConstructorUsedError;
  double get reviewScore => throw _privateConstructorUsedError;
  int get reviewCount => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  List<String> get tag => throw _privateConstructorUsedError;
  String? get reviewTime => throw _privateConstructorUsedError;

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
    List<ProductComment> comment,
    double reviewScore,
    int reviewCount,
    String image,
    List<String> tag,
    String? reviewTime,
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
    Object? reviewTime = freezed,
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
                        as List<ProductComment>,
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
            reviewTime:
                freezed == reviewTime
                    ? _value.reviewTime
                    : reviewTime // ignore: cast_nullable_to_non_nullable
                        as String?,
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
    List<ProductComment> comment,
    double reviewScore,
    int reviewCount,
    String image,
    List<String> tag,
    String? reviewTime,
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
    Object? reviewTime = freezed,
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
                    as List<ProductComment>,
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
        reviewTime:
            freezed == reviewTime
                ? _value.reviewTime
                : reviewTime // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$ProductImpl with DiagnosticableTreeMixin implements _Product {
  const _$ProductImpl({
    required this.rank,
    required this.brand,
    required this.type,
    required final List<ProductComment> comment,
    required this.reviewScore,
    required this.reviewCount,
    required this.image,
    required final List<String> tag,
    this.reviewTime,
  }) : _comment = comment,
       _tag = tag;

  @override
  final int rank;
  @override
  final String brand;
  @override
  final String type;
  final List<ProductComment> _comment;
  @override
  List<ProductComment> get comment {
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
  final String? reviewTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Product(rank: $rank, brand: $brand, type: $type, comment: $comment, reviewScore: $reviewScore, reviewCount: $reviewCount, image: $image, tag: $tag, reviewTime: $reviewTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Product'))
      ..add(DiagnosticsProperty('rank', rank))
      ..add(DiagnosticsProperty('brand', brand))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('comment', comment))
      ..add(DiagnosticsProperty('reviewScore', reviewScore))
      ..add(DiagnosticsProperty('reviewCount', reviewCount))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('tag', tag))
      ..add(DiagnosticsProperty('reviewTime', reviewTime));
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
            const DeepCollectionEquality().equals(other._tag, _tag) &&
            (identical(other.reviewTime, reviewTime) ||
                other.reviewTime == reviewTime));
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
    reviewTime,
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
    required final List<ProductComment> comment,
    required final double reviewScore,
    required final int reviewCount,
    required final String image,
    required final List<String> tag,
    final String? reviewTime,
  }) = _$ProductImpl;

  @override
  int get rank;
  @override
  String get brand;
  @override
  String get type;
  @override
  List<ProductComment> get comment;
  @override
  double get reviewScore;
  @override
  int get reviewCount;
  @override
  String get image;
  @override
  List<String> get tag;
  @override
  String? get reviewTime;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductComment {
  String get comment => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;

  /// Create a copy of ProductComment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCommentCopyWith<ProductComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCommentCopyWith<$Res> {
  factory $ProductCommentCopyWith(
    ProductComment value,
    $Res Function(ProductComment) then,
  ) = _$ProductCommentCopyWithImpl<$Res, ProductComment>;
  @useResult
  $Res call({String comment, List<String> images});
}

/// @nodoc
class _$ProductCommentCopyWithImpl<$Res, $Val extends ProductComment>
    implements $ProductCommentCopyWith<$Res> {
  _$ProductCommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductComment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? comment = null, Object? images = null}) {
    return _then(
      _value.copyWith(
            comment:
                null == comment
                    ? _value.comment
                    : comment // ignore: cast_nullable_to_non_nullable
                        as String,
            images:
                null == images
                    ? _value.images
                    : images // ignore: cast_nullable_to_non_nullable
                        as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductCommentImplCopyWith<$Res>
    implements $ProductCommentCopyWith<$Res> {
  factory _$$ProductCommentImplCopyWith(
    _$ProductCommentImpl value,
    $Res Function(_$ProductCommentImpl) then,
  ) = __$$ProductCommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String comment, List<String> images});
}

/// @nodoc
class __$$ProductCommentImplCopyWithImpl<$Res>
    extends _$ProductCommentCopyWithImpl<$Res, _$ProductCommentImpl>
    implements _$$ProductCommentImplCopyWith<$Res> {
  __$$ProductCommentImplCopyWithImpl(
    _$ProductCommentImpl _value,
    $Res Function(_$ProductCommentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductComment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? comment = null, Object? images = null}) {
    return _then(
      _$ProductCommentImpl(
        comment:
            null == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                    as String,
        images:
            null == images
                ? _value._images
                : images // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$ProductCommentImpl
    with DiagnosticableTreeMixin
    implements _ProductComment {
  const _$ProductCommentImpl({
    required this.comment,
    final List<String> images = const [],
  }) : _images = images;

  @override
  final String comment;
  final List<String> _images;
  @override
  @JsonKey()
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductComment(comment: $comment, images: $images)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductComment'))
      ..add(DiagnosticsProperty('comment', comment))
      ..add(DiagnosticsProperty('images', images));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductCommentImpl &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    comment,
    const DeepCollectionEquality().hash(_images),
  );

  /// Create a copy of ProductComment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCommentImplCopyWith<_$ProductCommentImpl> get copyWith =>
      __$$ProductCommentImplCopyWithImpl<_$ProductCommentImpl>(
        this,
        _$identity,
      );
}

abstract class _ProductComment implements ProductComment {
  const factory _ProductComment({
    required final String comment,
    final List<String> images,
  }) = _$ProductCommentImpl;

  @override
  String get comment;
  @override
  List<String> get images;

  /// Create a copy of ProductComment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductCommentImplCopyWith<_$ProductCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
