import 'package:easy_picture_matching/Domain/common/assets.dart';

///
/// ゲーム画面で使用する絵合わせ画像のenum
///
enum PictEnum {
  pict01(origin: Assets.pict01Origin, trim: Assets.pict01Trim),
  pict02(origin: Assets.pict02Origin, trim: Assets.pict02Trim),
  pict03(origin: Assets.pict03Origin, trim: Assets.pict03Trim),
  pict04(origin: Assets.pict04Origin, trim: Assets.pict04Trim),
  pict05(origin: Assets.pict05Origin, trim: Assets.pict05Trim),
  pict06(origin: Assets.pict06Origin, trim: Assets.pict06Trim);

  const PictEnum({required this.origin, required this.trim});

  final String origin;
  final String trim;
}
