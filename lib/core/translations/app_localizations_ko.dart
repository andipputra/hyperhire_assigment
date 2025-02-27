// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get homeAppBarTitle => 'LOGO';

  @override
  String get homeBottomBarHome => '홈';

  @override
  String get homeBottomBarCategory => '카테고리';

  @override
  String get homeBottomBarCommunity => '커뮤니티';

  @override
  String get homeBottomBarMyProfile => '마이페이지';

  @override
  String get homeSearchHint => '검색어를 입력하세요';

  @override
  String get homeProductReviewLabel => '제일 핫한 리뷰를 만나보세요';

  @override
  String get homeProductReviewRanking => '리뷰️  랭킹⭐ top 3';

  @override
  String get homeReviewerLabel => '골드 계급 사용자들이예요';

  @override
  String get homeReviewerRanking => '베스트 리뷰어 🏆 Top10';

  @override
  String get homeFooterLogo => 'LOGO Inc.';

  @override
  String get homeFooterAbout => '회사 소개 ';

  @override
  String get homeFooterCareer => '인재 채용';

  @override
  String get homeFooterBlog => '기술 블로그';

  @override
  String get homeFooterReviewCopyright => '리뷰 저작권';

  @override
  String get homeFooterEmail => 'review@logo.com';

  @override
  String get homeFooterLanguage => 'KOR';

  @override
  String get homeFooterCopyright => '@2022-2022 LOGO Lab, Inc. (주)아무개  서울시 강남구';

  @override
  String profileAppBarRank(int rank) {
    return '랭킹 $rank위';
  }

  @override
  String get profileAppBarTitle => '베스트 리뷰어';

  @override
  String profileRank(String rank) {
    String _temp0 = intl.Intl.selectLogic(
      rank,
      {
        '1': '골드',
        '2': '실버',
        '3': '브론즈',
        'other': '',
      },
    );
    return '$_temp0';
  }

  @override
  String get profileDescription => '조립컴 업체를 운영하며 리뷰를 작성합니다.';

  @override
  String get profileProductReview => '작성한 리뷰';

  @override
  String get profileProductReviewCount => '총 35개';

  @override
  String get profileProductReviewLatest => '최신순';

  @override
  String get profileProductReviewComment => '댓글 달기..';
}
