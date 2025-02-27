import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hyperhire_assigment/core/theme/color.dart';
import 'package:hyperhire_assigment/core/theme/text_style.dart';
import 'package:hyperhire_assigment/core/translations/app_localizations.dart';
import 'package:hyperhire_assigment/ui/view/pages/home/components/home_top_product_item.dart';
import 'package:hyperhire_assigment/ui/view_models/home/home_view_model.dart';

class HomeTopProduct extends ConsumerWidget {
  const HomeTopProduct({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final translation = AppLocalizations.of(context);

    final topProducts =
        ref.watch(homeViewModelProvider).value?.topProducts ?? [];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 28),
      child: Column(
        spacing: 14,
        children: [
          /// Top Product Title
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 16,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 2,
                children: [
                  Text(
                    translation?.homeProductReviewLabel ?? '',
                    style: AppTextStyle.comments.copyWith(color: AppColor.gray),
                  ),
                  Text(
                    translation?.homeProductReviewRanking ?? '',
                    style: AppTextStyle.h2.copyWith(color: AppColor.black),
                  ),
                ],
              ),
              Icon(Icons.chevron_right_rounded, color: AppColor.basicBlack),
            ],
          ),

          /// Top Product List
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder:
                (context, index) =>
                    HomeTopProductItem(product: topProducts[index]),
            separatorBuilder: (context, index) => SizedBox(height: 16),
            itemCount: topProducts.length,
          ),
        ],
      ),
    );
  }
}
