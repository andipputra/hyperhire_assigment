import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hyperhire_assigment/core/theme/color.dart';
import 'package:hyperhire_assigment/ui/view_models/home/home_view_model.dart';

class HomeBanner extends ConsumerWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bannerNotifier = ref.watch(homeViewModelProvider.notifier);
    final homeViewModel = ref.watch(homeViewModelProvider);
    final bannerData = homeViewModel.value?.listBanner ?? [];
    final currentBannerIndex = homeViewModel.value?.currentBannerIndex ?? 0;

    if (homeViewModel.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return Stack(
      children: [
        CarouselSlider(
          items:
              bannerData
                  .map((e) => Image.asset('assets/images/banner/${e.image}'))
                  .toList(),
          options: CarouselOptions(
            onPageChanged:
                (index, reason) => bannerNotifier.setCurrentBannerIndex(index),
            autoPlayCurve: Curves.easeInOutCirc,
            autoPlay: true,
            autoPlayAnimationDuration: Duration(milliseconds: 500),
            autoPlayInterval: Duration(seconds: 4),
            initialPage: currentBannerIndex,
            viewportFraction: 1,
            aspectRatio: 360 / 221,
          ),
        ),
        AspectRatio(
          aspectRatio: 360 / 221,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(bannerData.length, (index) {
                  bool isCurrentIndex = index == currentBannerIndex;
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOutCirc,
                    margin: const EdgeInsets.only(right: 5),
                    width: isCurrentIndex ? 9 : 4,
                    height: 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.white.withValues(
                        alpha: isCurrentIndex ? 1 : .5,
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
