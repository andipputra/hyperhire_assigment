import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hyperhire_assigment/core/theme/color.dart';
import 'package:hyperhire_assigment/core/theme/text_style.dart';
import 'package:hyperhire_assigment/core/translations/app_localizations.dart';
import 'package:hyperhire_assigment/ui/view/pages/home/components/home_reviewer_item.dart';
import 'package:hyperhire_assigment/ui/view_models/home/home_view_model.dart';

class HomeReviewer extends ConsumerWidget {
  const HomeReviewer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final translation = AppLocalizations.of(context);

    final topReviewers =
        ref.watch(homeViewModelProvider).value?.topReviewers ?? [];

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 2,
              children: [
                Text(
                  translation?.homeReviewerLabel ?? '',
                  style: AppTextStyle.comments.copyWith(color: AppColor.gray),
                ),
                Text(
                  translation?.homeReviewerRanking ?? '',
                  style: AppTextStyle.h2,
                ),
              ],
            ),
          ),
          SizedBox(height: 18),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 110),
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: topReviewers.length,
              padding: EdgeInsets.symmetric(horizontal: 20),
              separatorBuilder: (context, index) => const SizedBox(width: 18),
              itemBuilder:
                  (context, index) =>
                      HomeReviewerItem(reviewer: topReviewers[index]),
            ),
          ),
        ],
      ),
    );
  }
}
