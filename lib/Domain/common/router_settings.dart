import 'package:easy_picture_matching/Presentation/game_page.dart';
import 'package:easy_picture_matching/Presentation/history_page.dart';
import 'package:easy_picture_matching/Presentation/start_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

///
/// go_routerの設定
///
class RouterSettings {
  static String startPagePath = '/';
  static String startPageName = 'start';
  static String gamePagePath = '/game';
  static String gamePageName = 'game';
  static String historyPagePath = '/history';
  static String historyPageName = 'history';

  static final goRouter = GoRouter(
    // アプリが起動した時の初期表示画面
    initialLocation: startPagePath,
    // パスと画面の組み合わせ
    routes: [
      // スタート画面
      GoRoute(
        path: startPagePath,
        name: startPageName,
        pageBuilder: (context, state) {
          return MaterialPage(key: state.pageKey, child: const StartPage());
        },
      ),
      // ゲーム画面
      GoRoute(
        path: gamePagePath,
        name: gamePageName,
        pageBuilder: (context, state) {
          return MaterialPage(key: state.pageKey, child: const GamePage());
        },
      ),
      // りれき画面
      GoRoute(
        path: historyPagePath,
        name: historyPageName,
        pageBuilder: (context, state) {
          return MaterialPage(key: state.pageKey, child: const HistoryPage());
        },
      ),
    ],
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: Scaffold(body: Center(child: Text(state.error.toString()))),
    ),
  );
}
