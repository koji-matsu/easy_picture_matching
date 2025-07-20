import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_state.freezed.dart';

@freezed
abstract class HistoryState with _$HistoryState {
  const factory HistoryState({
    // 合計プレイ回数
    required int totalPlayCount,
    // 合計クリア回数
    required int totalClearCount,
  }) = _HistoryState;
}
