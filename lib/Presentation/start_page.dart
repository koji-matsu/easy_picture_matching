import 'package:animated_background/animated_background.dart';
import 'package:easy_animate/animation/pulse_animation.dart';
import 'package:easy_animate/enum/animate_type.dart';
import 'package:easy_picture_matching/Domain/common/assets.dart';
import 'package:easy_picture_matching/Domain/common/router_settings.dart';
import 'package:easy_picture_matching/Domain/common/strings.dart';
import 'package:easy_picture_matching/Domain/history_provider/history_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

///
/// スタート画面 - Presentation層
///
class StartPage extends ConsumerStatefulWidget {
  const StartPage({super.key});

  @override
  ConsumerState createState() => _StartPageState();
}

class _StartPageState extends ConsumerState<StartPage> with TickerProviderStateMixin {
  // 背景のアニメーション設定
  final ParticleOptions particleOptions = ParticleOptions(
    image: Image.asset(Assets.titleBackground),
    spawnMinSpeed: 30.0,
    spawnMaxSpeed: 70.0,
    minOpacity: 0.1,
    maxOpacity: 0.4,
    spawnMinRadius: 20.0,
    spawnMaxRadius: 70.0,
    particleCount: 30,
  );

  @override
  Widget build(BuildContext context) {
    ref.read(historyNotifierProvider);
    return Scaffold(
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
        ),
        child: AnimatedBackground(
          behaviour: RandomParticleBehaviour(options: particleOptions),
          vsync: this,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(color: Colors.white.withAlpha(150), child: Image.asset(Assets.titleLogo)),
              Padding(padding: EdgeInsets.only(top: 200.0)),
              PulseAnimation(
                animateType: AnimateType.loop,
                scaleAmount: 1.5,
                child: ElevatedButton(
                  onPressed: () => context.goNamed(RouterSettings.gamePageName),
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.zero, elevation: 10.0),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [Colors.red, Colors.purple, Colors.blue]),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
                      child: Text(
                        Strings.start,
                        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 40.0)),
              ElevatedButton(
                onPressed: () => context.goNamed(RouterSettings.historyPageName),
                style: ElevatedButton.styleFrom(padding: EdgeInsets.zero, elevation: 10.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 40.0),
                  child: Text(Strings.history, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
