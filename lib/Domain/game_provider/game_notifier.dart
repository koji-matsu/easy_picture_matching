import 'package:easy_picture_matching/Domain/common/enum.dart';
import 'package:easy_picture_matching/Domain/game_provider/game_state.dart';
import 'package:easy_picture_matching/Domain/history_provider/history_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_notifier.g.dart';

@riverpod
class GameNotifier extends _$GameNotifier {
  @override
  GameState build() {
    ref.read(historyNotifierProvider.notifier).updateTotalPlayCount();
    final List<PictMatchingModel> halfModel = List.generate(PictEnum.values.length, (i) => PictMatchingModel(pictEnum: PictEnum.values[i]));
    final List<PictMatchingModel> allModel = halfModel + halfModel;
    allModel.shuffle();
    return GameState(pictMatchingList: allModel);
  }

  ///
  /// 1枚目のカードタップ時の処理
  ///
  void onTapFrontCardFirst(int index) {
    final List<PictMatchingModel> pictMatchingList = state.pictMatchingList;
    final List<PictMatchingModel> newList = [
      for (int i = 0; i < pictMatchingList.length; i++)
        if (i == index) pictMatchingList[i].copyWith(isFront: true) else pictMatchingList[i].copyWith(isFront: false),
    ];
    state = state.copyWith(pictMatchingList: newList, selectNum: 1);
  }

  ///
  /// 2枚目のカードタップ時の処理
  ///
  bool onTapFrontCardSecond(int index) {
    final List<PictMatchingModel> pictMatchingList = state.pictMatchingList;
    for (int i = 0; i < pictMatchingList.length; i++) {
      if (pictMatchingList[i].isFront) {
        if (pictMatchingList[index].pictEnum == pictMatchingList[i].pictEnum) {
          final List<PictMatchingModel> newList = [
            for (int j = 0; j < pictMatchingList.length; j++)
              if (i == j || index == j) pictMatchingList[j].copyWith(isFront: true, isSuccess: true) else pictMatchingList[j],
          ];
          state = state.copyWith(pictMatchingList: newList, selectNum: 0, successCount: state.successCount + 1);

          if (6 <= state.successCount) {
            ref.read(historyNotifierProvider.notifier).updateTotalClearCount();
          }
          return true;
        } else {
          final List<PictMatchingModel> newList = [
            for (int i = 0; i < pictMatchingList.length; i++)
              if (i == index) pictMatchingList[i].copyWith(isFront: true) else pictMatchingList[i],
          ];
          state = state.copyWith(pictMatchingList: newList, selectNum: 0);
        }
      }
    }

    return false;
  }
}
