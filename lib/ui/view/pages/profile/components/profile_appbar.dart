import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hyperhire_assigment/core/theme/color.dart';
import 'package:hyperhire_assigment/core/theme/text_style.dart';
import 'package:hyperhire_assigment/core/translations/app_localizations.dart';

class ProfileAppbar extends AppBar {
  ProfileAppbar({super.key, required int rank})
      : super(
          automaticallyImplyLeading: false,
          leading: Builder(
            builder: (context) => IconButton(
              onPressed: () => context.maybePop(),
              icon: SvgPicture.asset('assets/vector/icon_back.svg'),
              iconSize: 21,
            ),
          ),
          centerTitle: true,
          title: Builder(
            builder: (context) {
              final translation = AppLocalizations.of(context);
              return Column(
                spacing: 2,
                children: [
                  Text(
                    translation?.profileAppBarRank(rank) ?? '',
                    style:
                        AppTextStyle.username.copyWith(color: AppColor.demiGray),
                  ),
                  Text(
                    translation?.profileAppBarTitle ?? '',
                    style: AppTextStyle.profileAppBarTitle
                        .copyWith(color: AppColor.basicBlack),
                  ),
                ],
              );
            },
          ),
        );
}

