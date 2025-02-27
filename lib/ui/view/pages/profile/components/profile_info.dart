import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyperhire_assigment/core/theme/color.dart';
import 'package:hyperhire_assigment/core/theme/text_style.dart';
import 'package:hyperhire_assigment/core/translations/app_localizations.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    super.key,
    required this.name,
    required this.profileImage,
    required this.rank,
  });

  final String profileImage;
  final String name;
  final int rank;

  @override
  Widget build(BuildContext context) {
    final translation = AppLocalizations.of(context);

    final (Color color, String name)? rankData =
        (rank <= 3)
            ? [
              (AppColor.gold, translation?.profileRank('1') ?? ''),
              (AppColor.silver, translation?.profileRank('2') ?? ''),
              (AppColor.bronze, translation?.profileRank('3') ?? ''),
            ][rank - 1]
            : null;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Column(
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/images/profile/$profileImage'),
          ),
          SizedBox(height: 12),
          Text(name, style: AppTextStyle.h1Bold.copyWith(color: AppColor.black)),
      
          if (rankData != null) ...[
            SizedBox(height: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 4,
              children: [
                SvgPicture.asset(
                  'assets/vector/icon_crown.svg',
                  colorFilter: ColorFilter.mode(rankData.$1, BlendMode.srcIn),
                ),
                Text(
                  rankData.$2,
                  style: AppTextStyle.h4Medium.copyWith(color: rankData.$1),
                ),
              ],
            ),
          ],
      
          SizedBox(height: 18),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: AppColor.liteGray,
            ),
            child: Text(
              translation?.profileDescription ?? '',
              style: AppTextStyle.h4.copyWith(color: AppColor.demiGray),
            ),
          ),
        ],
      ),
    );
  }
}
