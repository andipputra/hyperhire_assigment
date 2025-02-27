// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:hyperhire_assigment/data/models/user.dart' as _i5;
import 'package:hyperhire_assigment/ui/view/pages/home/home_page.dart' as _i1;
import 'package:hyperhire_assigment/ui/view/pages/profile/profile_page.dart'
    as _i2;

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute({List<_i3.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomePage();
    },
  );
}

/// generated route for
/// [_i2.ProfilePage]
class ProfileRoute extends _i3.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({
    _i4.Key? key,
    required _i5.User user,
    List<_i3.PageRouteInfo>? children,
  }) : super(
         ProfileRoute.name,
         args: ProfileRouteArgs(key: key, user: user),
         initialChildren: children,
       );

  static const String name = 'ProfileRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProfileRouteArgs>();
      return _i2.ProfilePage(key: args.key, user: args.user);
    },
  );
}

class ProfileRouteArgs {
  const ProfileRouteArgs({this.key, required this.user});

  final _i4.Key? key;

  final _i5.User user;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, user: $user}';
  }
}
