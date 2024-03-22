import 'package:flutter/material.dart';
import 'package:tunes_player_app/component/my_widget_view.dart';
import 'package:tunes_player_app/models/tune_models.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  final List<TuneModel> tunes = const [
    TuneModel(
      color: Color(0xffF44336),
      soundPath: 'note1.wav',
    ),
    TuneModel(
      color: Color(0xffF89800),
      soundPath: 'note2.wav',
    ),
    TuneModel(
      color: Color(0xffFEEB3B),
      soundPath: 'note3.wav',
    ),
    TuneModel(
      color: Color(0xff4CAF50),
      soundPath: 'note4.wav',
    ),
    TuneModel(
      color: Color(0xff2F9688),
      soundPath: 'note5.wav',
    ),
    TuneModel(
      color: Color(0xff2896F3),
      soundPath: 'note6.wav',
    ),
    TuneModel(
      color: Color(0xff9C27B0),
      soundPath: 'note7.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tune App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff253238),
      ),
      body: Column(
        children: tunes
            .map(
              (e) => MyWidgetView(tunes: e),
            )
            .toList(),
      ),
    );
  }
}
