import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hyperhire_assigment/core/theme/color.dart';
import 'package:hyperhire_assigment/data/models/user.dart';
import 'package:hyperhire_assigment/ui/view/pages/profile/components/profile_product_review_header.dart';
import 'package:hyperhire_assigment/ui/view/pages/profile/components/profile_product_review_product.dart';
import 'package:hyperhire_assigment/ui/view_models/profile/profile_view_model.dart';

class ProfileProductReview extends ConsumerWidget {
  const ProfileProductReview({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final latestReviewedProduct =
        ref.watch(profileViewModelProvider).value?.latestReviewedProduct;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: [
          ProfileProductReviewHeader(),
          Divider(thickness: 1, color: AppColor.liteGray),
          if (latestReviewedProduct != null)
            ProfileProductReviewProduct(
              product: latestReviewedProduct,
              user: user,
            ),
        ],
      ),
    );
  }
}
