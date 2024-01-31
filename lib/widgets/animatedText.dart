import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

//! https://pub.dev/packages/animated_text_kit
//! Tham khảo thêm các kiểu animated text trong pagackge ở link trên

class AnimatedTextWidget extends StatefulWidget {
  const AnimatedTextWidget({super.key});

  @override
  State<AnimatedTextWidget> createState() => _AnimatedTextWidgetState();
}

class _AnimatedTextWidgetState extends State<AnimatedTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Text Kit Example'),
      ),
      body: Center(
        child: Column(
          children: [
            AnimatedTextKit(
              animatedTexts: [
                FadeAnimatedText('Hello World'),
                ScaleAnimatedText(
                  'Then Scale',
                  textStyle:
                      TextStyle(fontSize: 70.0, fontFamily: 'Canterbury'),
                ),
              ],
            ),
            AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText('AWESOME'),
                RotateAnimatedText('OPTIMISTIC'),
                RotateAnimatedText('DIFFERENT'),
              ],
              onTap: () {
                print("Tap Event");
              },
            ),
            SizedBox(
              width: 250.0,
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Bobbers',
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText('It is not enough to do your best,'),
                    TyperAnimatedText('you must know what to do,'),
                    TyperAnimatedText('and then do your best'),
                    TyperAnimatedText('- W.Edwards Deming'),
                  ],
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            ),
            SizedBox(
              width: 250.0,
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Agne',
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText('Discipline is the best tool'),
                    TypewriterAnimatedText('Design first, then code'),
                    TypewriterAnimatedText(
                        'Do not patch bugs out, rewrite them'),
                    TypewriterAnimatedText(
                        'Do not test bugs out, design them out'),
                  ],
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            ),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 20.0,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText('Hello World'),
                  WavyAnimatedText('Look at the waves'),
                ],
                isRepeatingAnimation: true,
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
