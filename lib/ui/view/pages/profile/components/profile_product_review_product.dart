import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hyperhire_assigment/core/theme/color.dart';
import 'package:hyperhire_assigment/core/theme/text_style.dart';
import 'package:hyperhire_assigment/core/translations/app_localizations.dart';
import 'package:hyperhire_assigment/data/models/product.dart';
import 'package:hyperhire_assigment/data/models/user.dart';
import 'package:hyperhire_assigment/ui/view/widgets/five_stars.dart';

class ProfileProductReviewProduct extends StatelessWidget {
  const ProfileProductReviewProduct({
    super.key,
    required this.product,
    required this.user,
  });

  final Product product;
  final User user;

  @override
  Widget build(BuildContext context) {
    final translation = AppLocalizations.of(context);

    return Column(
      children: [
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            spacing: 14,
            children: [
              Container(
                height: 104,
                width: 104,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: AppColor.border, width: 1),
                ),
                child: Image.asset(
                  'assets/images/product/${product.image}',
                  width: 80,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        text: product.brand,
                        style: AppTextStyle.h4Bold.copyWith(
                          color: AppColor.basicBlack,
                        ),
                        children: [
                          TextSpan(text: ' '),
                          TextSpan(
                            text: product.type,
                            style: AppTextStyle.h4Medium,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        FiveStars(value: product.reviewScore.floor()),
                        SizedBox(width: 8),
                        Text(
                          '${product.reviewScore}',
                          style: AppTextStyle.h2.copyWith(
                            color: AppColor.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 8),
        Divider(
          thickness: 1,
          color: AppColor.liteGray,
          indent: 16,
          endIndent: 16,
        ),
        SizedBox(height: 14),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage(
                  'assets/images/profile/${user.image}',
                ),
              ),
              SizedBox(width: 6),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.name,
                    style: AppTextStyle.h4.copyWith(color: AppColor.black),
                  ),
                  SizedBox(height: 2),
                  Row(
                    children: [
                      FiveStars(value: product.reviewScore.floor(), size: 12),
                      SizedBox(width: 2),
                      Text(
                        product.reviewTime ?? '',
                        style: AppTextStyle.score.copyWith(
                          color: AppColor.demiGray,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              SvgPicture.asset('assets/vector/icon_bookmark.svg'),
            ],
          ),
        ),
        SizedBox(height: 26),
        SizedBox(
          height: 14,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder:
                (context, index) => Text(
                  product.tag[index],
                  style: AppTextStyle.score.copyWith(
                    color: AppColor.silver,
                    letterSpacing: -0.05,
                  ),
                ),
            separatorBuilder: (context, index) => SizedBox(width: 20),
            itemCount: product.tag.length,
          ),
        ),
        SizedBox(height: 18),
        ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 16),
          itemBuilder: (context, index) {
            final comment = product.comment[index];
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 13),
                SvgPicture.asset(
                  'assets/vector/icon_flash.svg',
                  colorFilter: ColorFilter.mode(
                    index == 0 ? AppColor.purple : AppColor.flashSilver,
                    BlendMode.srcIn,
                  ),
                  height: 16,
                  width: 9,
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        comment.comment,
                        style: AppTextStyle.h4.copyWith(color: AppColor.gray),
                      ),
                      if (comment.images.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: SizedBox(
                            height: 70,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemBuilder:
                                  (context, index) => ClipRRect(
                                    borderRadius: BorderRadius.circular(2),
                                    child: Image.asset(
                                      'assets/images/comment/${comment.images[index]}',
                                      width: 70,
                                      height: 70,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                              separatorBuilder:
                                  (context, index) => SizedBox(width: 10),
                              itemCount: comment.images.length,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            );
          },
          separatorBuilder: (context, index) => SizedBox(height: 18),
          itemCount: product.comment.length,
        ),
        SizedBox(height: 13),
        Divider(thickness: 1, color: AppColor.liteGray),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/vector/icon_chat.svg',
                height: 12,
                width: 12,
              ),
              SizedBox(width: 2),
              Text(
                translation?.profileProductReviewComment ?? '',
                style: AppTextStyle.username.copyWith(
                  color: AppColor.gray,
                  letterSpacing: -0.05,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16,)
      ],
    );
  }
}
