// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HomeState {
  List<BannerData> get listBanner => throw _privateConstructorUsedError;
  int get currentBannerIndex => throw _privateConstructorUsedError;
  List<Product> get topProducts => throw _privateConstructorUsedError;
  List<User> get topReviewers => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({
    List<BannerData> listBanner,
    int currentBannerIndex,
    List<Product> topProducts,
    List<User> topReviewers,
  });
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listBanner = null,
    Object? currentBannerIndex = null,
    Object? topProducts = null,
    Object? topReviewers = null,
  }) {
    return _then(
      _value.copyWith(
            listBanner:
                null == listBanner
                    ? _value.listBanner
                    : listBanner // ignore: cast_nullable_to_non_nullable
                        as List<BannerData>,
            currentBannerIndex:
                null == currentBannerIndex
                    ? _value.currentBannerIndex
                    : currentBannerIndex // ignore: cast_nullable_to_non_nullable
                        as int,
            topProducts:
                null == topProducts
                    ? _value.topProducts
                    : topProducts // ignore: cast_nullable_to_non_nullable
                        as List<Product>,
            topReviewers:
                null == topReviewers
                    ? _value.topReviewers
                    : topReviewers // ignore: cast_nullable_to_non_nullable
                        as List<User>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
    _$HomeStateImpl value,
    $Res Function(_$HomeStateImpl) then,
  ) = __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<BannerData> listBanner,
    int currentBannerIndex,
    List<Product> topProducts,
    List<User> topReviewers,
  });
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
    _$HomeStateImpl _value,
    $Res Function(_$HomeStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listBanner = null,
    Object? currentBannerIndex = null,
    Object? topProducts = null,
    Object? topReviewers = null,
  }) {
    return _then(
      _$HomeStateImpl(
        listBanner:
            null == listBanner
                ? _value._listBanner
                : listBanner // ignore: cast_nullable_to_non_nullable
                    as List<BannerData>,
        currentBannerIndex:
            null == currentBannerIndex
                ? _value.currentBannerIndex
                : currentBannerIndex // ignore: cast_nullable_to_non_nullable
                    as int,
        topProducts:
            null == topProducts
                ? _value._topProducts
                : topProducts // ignore: cast_nullable_to_non_nullable
                    as List<Product>,
        topReviewers:
            null == topReviewers
                ? _value._topReviewers
                : topReviewers // ignore: cast_nullable_to_non_nullable
                    as List<User>,
      ),
    );
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl({
    final List<BannerData> listBanner = const [],
    this.currentBannerIndex = 0,
    final List<Product> topProducts = const [],
    final List<User> topReviewers = const [],
  }) : _listBanner = listBanner,
       _topProducts = topProducts,
       _topReviewers = topReviewers;

  final List<BannerData> _listBanner;
  @override
  @JsonKey()
  List<BannerData> get listBanner {
    if (_listBanner is EqualUnmodifiableListView) return _listBanner;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listBanner);
  }

  @override
  @JsonKey()
  final int currentBannerIndex;
  final List<Product> _topProducts;
  @override
  @JsonKey()
  List<Product> get topProducts {
    if (_topProducts is EqualUnmodifiableListView) return _topProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topProducts);
  }

  final List<User> _topReviewers;
  @override
  @JsonKey()
  List<User> get topReviewers {
    if (_topReviewers is EqualUnmodifiableListView) return _topReviewers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topReviewers);
  }

  @override
  String toString() {
    return 'HomeState(listBanner: $listBanner, currentBannerIndex: $currentBannerIndex, topProducts: $topProducts, topReviewers: $topReviewers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality().equals(
              other._listBanner,
              _listBanner,
            ) &&
            (identical(other.currentBannerIndex, currentBannerIndex) ||
                other.currentBannerIndex == currentBannerIndex) &&
            const DeepCollectionEquality().equals(
              other._topProducts,
              _topProducts,
            ) &&
            const DeepCollectionEquality().equals(
              other._topReviewers,
              _topReviewers,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_listBanner),
    currentBannerIndex,
    const DeepCollectionEquality().hash(_topProducts),
    const DeepCollectionEquality().hash(_topReviewers),
  );

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState({
    final List<BannerData> listBanner,
    final int currentBannerIndex,
    final List<Product> topProducts,
    final List<User> topReviewers,
  }) = _$HomeStateImpl;

  @override
  List<BannerData> get listBanner;
  @override
  int get currentBannerIndex;
  @override
  List<Product> get topProducts;
  @override
  List<User> get topReviewers;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
