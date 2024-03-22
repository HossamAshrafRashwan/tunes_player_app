import 'package:flutter/material.dart';
import 'package:tunes_player_app/models/tune_models.dart';

class MyWidgetView extends StatelessWidget {
  const MyWidgetView({
    super.key,
    required this.tunes,
  });

  final TuneModel tunes;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tunes.playSound();
        },
        child: Container(
          color: tunes.color,
        ),
      ),
    );
  }
}
