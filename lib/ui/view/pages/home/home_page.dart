import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hyperhire_assigment/core/theme/color.dart';
import 'package:hyperhire_assigment/core/theme/text_style.dart';
import 'package:hyperhire_assigment/core/translations/app_localizations.dart';
import 'package:hyperhire_assigment/ui/view/pages/home/components/home_banner.dart';
import 'package:hyperhire_assigment/ui/view/pages/home/components/home_footer.dart';
import 'package:hyperhire_assigment/ui/view/pages/home/components/home_reviewer.dart';
import 'package:hyperhire_assigment/ui/view/pages/home/components/home_search.dart';
import 'package:hyperhire_assigment/ui/view/pages/home/components/home_top_product.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final translation = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          translation?.homeAppBarTitle ?? '',
          style: AppTextStyle.appBar.copyWith(color: AppColor.iris),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          HomeSearch(),
          HomeBanner(),
          HomeTopProduct(),
          Divider(thickness: 16, color: AppColor.liteGray),
          HomeReviewer(),
          HomeFooter(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColor.white,
        notchMargin: 0,
        child: Container(
          height: kBottomNavigationBarHeight,
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: AppColor.black.withValues(alpha: .1),
                blurRadius: 0.1,
              ),
            ],
            border: Border(
              top: BorderSide(width: 1, color: AppColor.flashSilver),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              botnavItem(
                image: 'icon_home.svg',
                title: translation?.homeBottomBarHome ?? '',
                isSelected: true,
              ),
              botnavItem(
                image: 'icon_category.svg',
                title: translation?.homeBottomBarCategory ?? '',
                isSelected: false,
              ),
              botnavItem(
                image: 'icon_community.svg',
                title: translation?.homeBottomBarCommunity ?? '',
                isSelected: false,
              ),
              botnavItem(
                image: 'icon_profile.svg',
                title: translation?.homeBottomBarMyProfile ?? '',
                isSelected: false,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget botnavItem({
    required String image,
    required String title,
    bool isSelected = false,
  }) => InkWell(
    onTap: () {},
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          'assets/vector/$image',
          height: 22,
          width: 22,
          colorFilter: ColorFilter.mode(
            isSelected ? AppColor.activeBottomNavBar : AppColor.flashSilver,
            BlendMode.srcIn,
          ),
        ),
        SizedBox(height: 4),
        Text(
          title,
          style: AppTextStyle.username.copyWith(
            color: isSelected ? AppColor.basicBlack : AppColor.midGrey,
          ),
        ),
      ],
    ),
  );
}
