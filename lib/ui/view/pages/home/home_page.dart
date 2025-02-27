import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hyperhire_assigment/core/theme/color.dart';
import 'package:hyperhire_assigment/ui/view/pages/home/components/home_banner.dart';
import 'package:hyperhire_assigment/ui/view/pages/home/components/home_reviewer.dart';
import 'package:hyperhire_assigment/ui/view/pages/home/components/home_search.dart';
import 'package:hyperhire_assigment/ui/view/pages/home/components/home_top_product.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text("LOGO")),
      body: ListView(
        shrinkWrap: true,
        children: [
          HomeSearch(),
          HomeBanner(),
          HomeTopProduct(),
          Divider(
            thickness: 16,
            color: AppColor.lightGray,
          ),
          HomeReviewer(),
        ],
      )
    );
  }
}
