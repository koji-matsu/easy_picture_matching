import 'package:easy_picture_matching/Domain/common/assets.dart';
import 'package:easy_picture_matching/Domain/common/enum.dart';
import 'package:easy_picture_matching/Domain/common/router_settings.dart';
import 'package:easy_picture_matching/Domain/common/strings.dart';
import 'package:easy_picture_matching/Domain/game_provider/game_notifier.dart';
import 'package:easy_picture_matching/Domain/game_provider/game_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

///
/// ゲーム画面 - Presentation層
///
class GamePage extends ConsumerWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GameNotifier gameNotifier = ref.read(gameNotifierProvider.notifier);
    final GameState gameState = ref.watch(gameNotifierProvider);

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
      body: Container(
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
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Center(
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 5.0,
              mainAxisSpacing: 5.0,
              shrinkWrap: true,
              children: List.generate(12, (index) {
                final PictMatchingModel model = gameState.pictMatchingList[index];
                final isOpen = (model.isFront || model.isSuccess);
                return Stack(
                  children: [
                    // 表カードのウィジェット
                    _FrontCard(isOpen: isOpen, pictEnum: gameState.pictMatchingList[index].pictEnum),
                    // 裏カードのウィジェット
                    _BackCard(index: index, isOpen: isOpen, model: model, gameState: gameState, gameNotifier: gameNotifier),
                  ],
                );
              }),
            ),
          ),
        ),
      ),
    );
  }
}

///
/// 表カードのウィジェット
///
class _FrontCard extends StatelessWidget {
  const _FrontCard({required this.isOpen, required this.pictEnum});

  final bool isOpen;
  final PictEnum pictEnum;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isOpen ? 1.0 : 0.0,
      curve: Curves.easeIn,
      duration: Duration(milliseconds: 600),
      child: Image.asset(pictEnum.trim),
    );
  }
}

///
/// 裏カードのウィジェット（表カードのタップ処理も含む）
///
class _BackCard extends StatelessWidget {
  const _BackCard({required this.index, required this.isOpen, required this.model, required this.gameState, required this.gameNotifier});

  final int index;
  final bool isOpen;
  final PictMatchingModel model;
  final GameState gameState;
  final GameNotifier gameNotifier;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isOpen ? 0.0 : 1.0,
      curve: Curves.easeIn,
      duration: Duration(milliseconds: 600),
      child: InkWell(
        child: Image.asset(Assets.questionBox),
        onTap: () async {
          if (isOpen) {
            // 表カードをタップした場合の処理
            _onTappedFrontCard(context);
          } else {
            // 裏カードをタップした場合の処理
            await _onTappedBackCard(context);
          }
        },
      ),
    );
  }

  ///
  /// 表カードをタップした場合の処理
  ///
  void _onTappedFrontCard(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      barrierColor: Colors.black.withAlpha(200),
      builder: (context) {
        return Dialog.fullscreen(
          backgroundColor: Colors.transparent,
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Image.asset(model.pictEnum.origin, fit: BoxFit.fitWidth),
            onTap: () => context.pop(),
          ),
        );
      },
    );
  }

  ///
  /// 裏カードをタップした場合の処理
  ///
  Future<void> _onTappedBackCard(BuildContext context) async {
    if (gameState.selectNum == 0) {
      // 1枚目のカードをめくった場合の処理
      gameNotifier.onTapFrontCardFirst(index);
    } else {
      // 2枚目のカードをめくった場合の処理
      final bool isSuccess = gameNotifier.onTapFrontCardSecond(index);
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return DecoratedBox(
            decoration: BoxDecoration(color: Colors.transparent),
            child: Image.asset(isSuccess ? Assets.success : Assets.fail),
          );
        },
      );
      await Future.delayed(const Duration(seconds: 1));
      if (!context.mounted) return;
      context.pop();

      // 全てをめくり終えた場合は、クリア成功ダイアログを表示する
      if (isSuccess && gameState.successCount >= 5) {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return Dialog(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.transparent),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.asset(Assets.congratulations),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
                        ),
                        onPressed: () => context.goNamed(RouterSettings.startPageName),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0),
                          child: Text(
                            Strings.goBackTitle,
                            style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }
    }
  }
}
