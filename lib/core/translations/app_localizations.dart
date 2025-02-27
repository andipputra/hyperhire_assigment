import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ko.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'translations/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ko')
  ];

  /// Home Search Hint
  ///
  /// In ko, this message translates to:
  /// **'검색어를 입력하세요'**
  String get homeSearchHint;

  /// Home Product Review Label
  ///
  /// In ko, this message translates to:
  /// **'제일 핫한 리뷰를 만나보세요'**
  String get homeProductReviewLabel;

  /// Home Product Review Ranking
  ///
  /// In ko, this message translates to:
  /// **'리뷰️  랭킹⭐ top 3'**
  String get homeProductReviewRanking;

  /// Home Reviewer Label
  ///
  /// In ko, this message translates to:
  /// **'골드 계급 사용자들이예요'**
  String get homeReviewerLabel;

  /// Home Reviewer Ranking
  ///
  /// In ko, this message translates to:
  /// **'베스트 리뷰어 🏆 Top10'**
  String get homeReviewerRanking;

  /// Home Footer Logo
  ///
  /// In ko, this message translates to:
  /// **'LOGO Inc.'**
  String get homeFooterLogo;

  /// Home Footer About
  ///
  /// In ko, this message translates to:
  /// **'회사 소개 '**
  String get homeFooterAbout;

  /// Home Footer Career
  ///
  /// In ko, this message translates to:
  /// **'인재 채용'**
  String get homeFooterCareer;

  /// Home Footer Blog
  ///
  /// In ko, this message translates to:
  /// **'기술 블로그'**
  String get homeFooterBlog;

  /// Home Footer Review Copyright
  ///
  /// In ko, this message translates to:
  /// **'리뷰 저작권'**
  String get homeFooterReviewCopyright;

  /// Home Footer Email
  ///
  /// In ko, this message translates to:
  /// **'review@logo.com'**
  String get homeFooterEmail;

  /// Home Footer Language
  ///
  /// In ko, this message translates to:
  /// **'KOR'**
  String get homeFooterLanguage;

  /// Home Footer Copyright
  ///
  /// In ko, this message translates to:
  /// **'@2022-2022 LOGO Lab, Inc. (주)아무개  서울시 강남구'**
  String get homeFooterCopyright;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ko'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ko': return AppLocalizationsKo();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
