import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hyperhire_assigment/core/theme/color.dart';
import 'package:hyperhire_assigment/core/theme/text_style.dart';
import 'package:hyperhire_assigment/data/models/user.dart';
import 'package:hyperhire_assigment/router/app_router.gr.dart';

class HomeReviewerItem extends StatelessWidget {
  const HomeReviewerItem({super.key, required this.reviewer});

  final User reviewer;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushRoute(ProfileRoute(user: reviewer)),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: reviewer.rank == 1 ? 8 : 10,
            children: [
              CircleAvatar(
                radius: reviewer.rank == 1 ? 36 : 32,
                backgroundColor: AppColor.gold,
                child: CircleAvatar(
                  radius: 32,
                  backgroundImage: AssetImage(
                    'assets/images/profile/${reviewer.image}',
                  ),
                ),
              ),
              Text(
                reviewer.name,
                style: AppTextStyle.h4.copyWith(
                  color: AppColor.gray,
                  letterSpacing: -0.02,
                ),
              ),
            ],
          ),
          if (reviewer.rank == 1)
            Positioned(
              top: 0,
              left: 0,
              child: SvgPicture.asset('assets/vector/icon_crown.svg'),
            ),
        ],
      ),
    );
  }
}
