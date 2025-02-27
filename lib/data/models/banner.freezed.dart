// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$BannerData {
  String get image => throw _privateConstructorUsedError;

  /// Create a copy of BannerData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BannerDataCopyWith<BannerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerDataCopyWith<$Res> {
  factory $BannerDataCopyWith(
    BannerData value,
    $Res Function(BannerData) then,
  ) = _$BannerDataCopyWithImpl<$Res, BannerData>;
  @useResult
  $Res call({String image});
}

/// @nodoc
class _$BannerDataCopyWithImpl<$Res, $Val extends BannerData>
    implements $BannerDataCopyWith<$Res> {
  _$BannerDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BannerData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? image = null}) {
    return _then(
      _value.copyWith(
            image:
                null == image
                    ? _value.image
                    : image // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BannerDataImplCopyWith<$Res>
    implements $BannerDataCopyWith<$Res> {
  factory _$$BannerDataImplCopyWith(
    _$BannerDataImpl value,
    $Res Function(_$BannerDataImpl) then,
  ) = __$$BannerDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String image});
}

/// @nodoc
class __$$BannerDataImplCopyWithImpl<$Res>
    extends _$BannerDataCopyWithImpl<$Res, _$BannerDataImpl>
    implements _$$BannerDataImplCopyWith<$Res> {
  __$$BannerDataImplCopyWithImpl(
    _$BannerDataImpl _value,
    $Res Function(_$BannerDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BannerData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? image = null}) {
    return _then(
      _$BannerDataImpl(
        image:
            null == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$BannerDataImpl implements _BannerData {
  const _$BannerDataImpl({required this.image});

  @override
  final String image;

  @override
  String toString() {
    return 'BannerData(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerDataImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  /// Create a copy of BannerData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerDataImplCopyWith<_$BannerDataImpl> get copyWith =>
      __$$BannerDataImplCopyWithImpl<_$BannerDataImpl>(this, _$identity);
}

abstract class _BannerData implements BannerData {
  const factory _BannerData({required final String image}) = _$BannerDataImpl;

  @override
  String get image;

  /// Create a copy of BannerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BannerDataImplCopyWith<_$BannerDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
