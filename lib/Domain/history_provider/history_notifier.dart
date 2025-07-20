import 'package:easy_picture_matching/Domain/common/shared_preferences_key.dart';
import 'package:easy_picture_matching/Domain/history_provider/history_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'history_notifier.g.dart';

@Riverpod(keepAlive: true)
class HistoryNotifier extends _$HistoryNotifier {
  @override
  Future<HistoryState> build() async {
    final prefs = await SharedPreferences.getInstance();
    return HistoryState(
      totalPlayCount: prefs.getInt(SharedPreferencesKey.playCnt) ?? 0,
      totalClearCount: prefs.getInt(SharedPreferencesKey.clearCnt) ?? 0,
    );
  }

  ///
  /// プレイ回数を更新する
  ///
  Future<void> updateTotalPlayCount() async {
    final HistoryState? value = state.value;
    if (value != null) {
      final prefs = await SharedPreferences.getInstance();
      prefs.setInt(SharedPreferencesKey.playCnt, value.totalPlayCount + 1);

      state = AsyncData(value.copyWith(totalPlayCount: value.totalPlayCount + 1));
    }
  }

  ///
  /// クリア回数を更新
  ///
  Future<void> updateTotalClearCount() async {
    final HistoryState? value = state.value;
    if (value != null) {
      final prefs = await SharedPreferences.getInstance();
      prefs.setInt(SharedPreferencesKey.clearCnt, value.totalClearCount + 1);

      state = AsyncData(value.copyWith(totalClearCount: value.totalClearCount + 1));
    }
  }
}
