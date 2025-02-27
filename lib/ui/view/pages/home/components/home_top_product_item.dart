import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hyperhire_assigment/core/theme/color.dart';
import 'package:hyperhire_assigment/core/theme/text_style.dart';
import 'package:hyperhire_assigment/data/models/product.dart';

class HomeTopProductItem extends StatelessWidget {
  const HomeTopProductItem({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final crownColor = switch (product.rank) {
      1 => AppColor.gold,
      2 => AppColor.silver,
      3 => AppColor.bronze,
      _ => AppColor.gold,
    };

    return Row(
      spacing: 8,
      children: [
        /// Product Image
        Container(
          height: 104,
          width: 104,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: AppColor.border, width: 1),
          ),
          child: Stack(
            children: [
              Center(
                child: Image.asset(
                  'assets/images/product/${product.image}',
                  width: 80,
                ),
              ),
              Positioned(
                top: 6,
                left: 6,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/vector/icon_crown.svg',
                      height: 15,
                      width: 15,
                      colorFilter: ColorFilter.mode(
                        crownColor,
                        BlendMode.srcIn,
                      ),
                    ),
                    Text(
                      product.rank.toString(),
                      style: AppTextStyle.rank.copyWith(color: AppColor.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        /// Product Description
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  text: product.brand,
                  style: AppTextStyle.h4Bold.copyWith(
                    color: AppColor.basicBlack,
                  ),
                  children: [
                    TextSpan(text: ' '),
                    TextSpan(text: product.type, style: AppTextStyle.h4Medium),
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder:
                    (_, index) => Text(
                      '• ${product.comment[index]}',
                      style: AppTextStyle.body.copyWith(
                        color: AppColor.basicBlack,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                itemCount: product.comment.length,
              ),
              SizedBox(height: 6),
              Row(
                children: [
                  Icon(Icons.star_rounded, color: AppColor.gold),
                  SizedBox(width: 3),
                  Text(
                    product.reviewScore.toString(),
                    style: AppTextStyle.score.copyWith(color: AppColor.gold),
                  ),
                  SizedBox(width: 2),
                  Text(
                    '(${product.reviewCount.toString()})',
                    style: AppTextStyle.score.copyWith(
                      color: AppColor.scoreGray,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6),
              Row(
                spacing: 4,
                children:
                    product.tag
                        .map(
                          (tag) => Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              color: AppColor.lightGray,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              tag,
                              style: AppTextStyle.tag.copyWith(
                                color: AppColor.demiGray,
                              ),
                            ),
                          ),
                        )
                        .toList(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
