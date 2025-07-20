import 'package:easy_picture_matching/Domain/common/assets.dart';
import 'package:easy_picture_matching/Domain/common/router_settings.dart';
import 'package:easy_picture_matching/Domain/common/strings.dart';
import 'package:easy_picture_matching/Domain/history_provider/history_notifier.dart';
import 'package:easy_picture_matching/Domain/history_provider/history_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

///
/// りれき画面 - Presentation層
///
class HistoryPage extends ConsumerWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<HistoryState> historyState = ref.watch(historyNotifierProvider);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 150,
        leading: TextButton(
          child: Text(
            Strings.goBackTitle,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
          onPressed: () => context.goNamed(RouterSettings.startPageName),
        ),
      ),
      body: historyState.when(
        data: (data) => Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
              colors: [Colors.green.shade100, Colors.blue.shade100, Colors.yellow.shade100],
              stops: const [0.0, 0.5, 1.0],
            ),
            image: DecorationImage(image: AssetImage(Assets.gameBackground), fit: BoxFit.fill),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 140.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'りれき',
                  style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 30.0),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Text(
                    'プレイ回数：${data.totalPlayCount}回',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'クリア回数：${data.totalClearCount}回',
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24.0),
                  ),
                ),
              ],
            ),
          ),
        ),
        error: (err, _) => Text(err.toString()),
        loading: () => const CircularProgressIndicator(),
      ),
    );
  }
}
