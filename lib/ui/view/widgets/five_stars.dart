import 'package:flutter/material.dart';
import 'package:hyperhire_assigment/core/theme/color.dart';

class FiveStars extends StatelessWidget {
  const FiveStars({super.key, required this.value, this.size});

  final int value;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < 5; i++)
          Icon(
            Icons.star_rounded,
            color: i + 1 <= value ? AppColor.gold : AppColor.liteGray,
            size: size,
          ),
      ],
    );
  }
}
