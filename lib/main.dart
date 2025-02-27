import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hyperhire_assigment/core/theme/color.dart';
import 'package:hyperhire_assigment/core/translations/app_localizations.dart';
import 'package:hyperhire_assigment/router/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRoute = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Hyperhire Assignment Application',
      theme: ThemeData(
        useMaterial3: false,
        fontFamily: 'NotoSansKr',
        appBarTheme: AppBarTheme(
          backgroundColor: AppColor.white,
          shadowColor: AppColor.black,
          elevation: 1,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        scaffoldBackgroundColor: AppColor.white,
      ),
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      routerDelegate: AutoRouterDelegate(_appRoute),
      routeInformationParser: _appRoute.defaultRouteParser(),
    );
  }
}
