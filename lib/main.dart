import 'package:easy_picture_matching/Domain/common/router_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(const ProviderScope(child: StudySessionApp()));
  });
}

class StudySessionApp extends StatelessWidget {
  const StudySessionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        // アプリ内全体で「よもぎフォント」を適用
        fontFamily: GoogleFonts.yomogi(textStyle: TextStyle(fontWeight: FontWeight.w500)).fontFamily,
      ),
      routerDelegate: RouterSettings.goRouter.routerDelegate,
      routeInformationParser: RouterSettings.goRouter.routeInformationParser,
      routeInformationProvider: RouterSettings.goRouter.routeInformationProvider,
    );
  }
}
