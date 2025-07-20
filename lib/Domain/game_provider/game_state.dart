import 'package:easy_picture_matching/Domain/common/enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_state.freezed.dart';

@freezed
abstract class GameState with _$GameState {
  const factory GameState({required List<PictMatchingModel> pictMatchingList, @Default(0) int successCount, @Default(0) int selectNum}) = _GameState;
}

@freezed
abstract class PictMatchingModel with _$PictMatchingModel {
  const factory PictMatchingModel({
    // 絵合わせの画像情報
    required PictEnum pictEnum,
    // 1枚目でカードをめくっいるかどうか
    @Default(false) bool isFront,
    // カードが揃っているかどうか
    @Default(false) bool isSuccess,
  }) = _PictMatchingModel;
}
