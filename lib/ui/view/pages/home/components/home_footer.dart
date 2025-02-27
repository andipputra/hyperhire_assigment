import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hyperhire_assigment/core/theme/color.dart';
import 'package:hyperhire_assigment/core/theme/text_style.dart';
import 'package:hyperhire_assigment/core/translations/app_localizations.dart';

class HomeFooter extends StatelessWidget {
  const HomeFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final translation = AppLocalizations.of(context);

    return Container(
      decoration: BoxDecoration(color: AppColor.lightGray),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            translation?.homeFooterLogo ?? '',
            style: AppTextStyle.h4Medium.copyWith(color: AppColor.demiGray),
          ),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                translation?.homeFooterAbout ?? '',
                style: AppTextStyle.footer.copyWith(color: AppColor.demiGray),
              ),
              SizedBox(
                height: 9,
                child: VerticalDivider(color: AppColor.divider, thickness: 1),
              ),
              Text(
                translation?.homeFooterCareer ?? '',
                style: AppTextStyle.footer.copyWith(color: AppColor.demiGray),
              ),
              SizedBox(
                height: 9,
                child: VerticalDivider(color: AppColor.divider, thickness: 1),
              ),
              Text(
                translation?.homeFooterBlog ?? '',
                style: AppTextStyle.footer.copyWith(color: AppColor.demiGray),
              ),
              SizedBox(
                height: 9,
                child: VerticalDivider(color: AppColor.divider, thickness: 1),
              ),
              Text(
                translation?.homeFooterReviewCopyright ?? '',
                style: AppTextStyle.footer.copyWith(color: AppColor.demiGray),
              ),
            ],
          ),
          SizedBox(height: 18),
          Row(
            children: [
              SvgPicture.asset('assets/vector/icon_send.svg', height: 12),
              SizedBox(width: 4),
              Text(
                translation?.homeFooterEmail ?? '',
                style: AppTextStyle.footer.copyWith(color: AppColor.demiGray),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: AppColor.demiGray),
                ),
                child: Row(
                  children: [
                    Text(
                      translation?.homeFooterLanguage ?? '',
                      style: AppTextStyle.score.copyWith(
                        color: AppColor.demiGray,
                        letterSpacing: -0.05,
                      ),
                    ),
                    SizedBox(width: 24),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 16,
                      color: AppColor.demiGray,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 14),
          Divider(color: AppColor.divider, thickness: 1),
          SizedBox(height: 14),
          Text(
            translation?.homeFooterCopyright ?? '',
            style: AppTextStyle.score.copyWith(
              color: AppColor.demiGray,
              letterSpacing: -0.02,
            ),
          ),
        ],
      ),
    );
  }
}
