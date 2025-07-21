import 'package:easy_picture_matching/Domain/common/enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_state.freezed.dart';

@freezed
abstract class GameState with _$GameState {
  const factory GameState({
    // カード12枚の情報
    required List<PictMatchingModel> pictMatchingList,
    // 成功した回数（最大6回）
    @Default(0) int successCount,
    // カードをめくった枚数（1枚めくったら1、2枚目をめくったら0に戻る）
    @Default(0) int selectNum,
  }) = _GameState;
}

@freezed
abstract class PictMatchingModel with _$PictMatchingModel {
  const factory PictMatchingModel({
    // 絵合わせの画像情報
    required PictEnum pictEnum,
    // 1枚目でカードをめくっているかどうか
    @Default(false) bool isFront,
    // カードが揃っているかどうか
    @Default(false) bool isSuccess,
  }) = _PictMatchingModel;
}
