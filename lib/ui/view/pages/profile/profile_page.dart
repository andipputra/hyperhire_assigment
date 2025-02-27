import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hyperhire_assigment/core/theme/color.dart';
import 'package:hyperhire_assigment/data/models/user.dart';
import 'package:hyperhire_assigment/ui/view/pages/profile/components/profile_appbar.dart';
import 'package:hyperhire_assigment/ui/view/pages/profile/components/profile_info.dart';
import 'package:hyperhire_assigment/ui/view/pages/profile/components/profile_product_review.dart';

@RoutePage()
class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: ProfileAppbar(rank: user.rank),
      body: ListView(
        shrinkWrap: true,
        children: [
          ProfileInfo(
            name: user.name,
            profileImage: user.image,
            rank: user.rank,
          ),
          Divider(color: AppColor.liteGray, thickness: 16),
          ProfileProductReview(user: user),
        ],
      ),
    );
  }
}
