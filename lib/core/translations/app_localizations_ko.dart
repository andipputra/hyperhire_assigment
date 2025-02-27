// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

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
}
