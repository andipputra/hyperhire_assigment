import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:hyperhire_assigment/core/theme/color.dart';
import 'package:hyperhire_assigment/core/theme/text_style.dart';
import 'package:hyperhire_assigment/core/translations/app_localizations.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    final translations = AppLocalizations.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: TextField(
        decoration: InputDecoration(
          border: GradientOutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(colors: AppColor.textFieldGradient),
            width: 2,
          ),
          hintText: translations?.homeSearchHint,
          hintStyle: AppTextStyle.textFieldHint.copyWith(
            color: AppColor.demiGray,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: SvgPicture.asset('assets/vector/icon_search.svg'),
          ),
          suffixIconColor: AppColor.purple,
        ),
      ),
    );
  }
}
