import 'package:flutter/material.dart';
import 'package:hyperhire_assigment/core/theme/color.dart';
import 'package:hyperhire_assigment/core/theme/text_style.dart';
import 'package:hyperhire_assigment/core/translations/app_localizations.dart';

class ProfileProductReviewHeader extends StatelessWidget {
  const ProfileProductReviewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final translation = AppLocalizations.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              text: translation?.profileProductReview,
              style: AppTextStyle.h3.copyWith(color: AppColor.black),
              children: [
                TextSpan(text: ' '),
                TextSpan(
                  text: translation?.profileProductReviewCount,
                  style: AppTextStyle.body.copyWith(
                    color: AppColor.gray,
                    height: 23 / 12,
                    letterSpacing: -0.02,
                  ),
                ),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: AppColor.demiGray),
            ),
            child: Row(
              children: [
                Text(
                  translation?.profileProductReviewLatest ?? '',
                  style: AppTextStyle.body.copyWith(
                    color: AppColor.demiGray,
                    letterSpacing: -0.05,
                  ),
                ),
                SizedBox(width: 16),
                Icon(Icons.arrow_drop_down, size: 16, color: AppColor.demiGray),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
