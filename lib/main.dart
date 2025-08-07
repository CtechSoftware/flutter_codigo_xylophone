import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  // Función para crear cada botón de nota
  Widget buildKey({
    required Color color,
    required String text,
    required String audioFile,
  }) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            AudioPlayer audioPlayer = AudioPlayer();
            audioPlayer.play(AssetSource(audioFile));
          },
          child: Text(text),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Xylophone App',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(
            color: Colors.red,
            text: 'wav1',
            audioFile: 'audios/note1.wav',
          ),
          buildKey(
            color: Colors.amber,
            text: 'hola1',
            audioFile: 'audios/note2.wav',
          ),
          buildKey(
            color: Colors.blue,
            text: 'hola',
            audioFile: 'audios/note3.wav',
          ),
          buildKey(
            color: Colors.blue,
            text: 'hola',
            audioFile: 'audios/note3.wav',
          ),
          buildKey(
            color: Colors.blue,
            text: 'hola',
            audioFile: 'audios/note4.wav',
          ),
          buildKey(
            color: Colors.blue,
            text: 'hola',
            audioFile: 'audios/note5.wav',
          ),
          buildKey(
            color: Colors.blue,
            text: 'hola',
            audioFile: 'audios/note6.wav',
          ),
          buildKey(
            color: Colors.blue,
            text: 'hola',
            audioFile: 'audios/note7.wav',
          ),
        ],
      ),
    );
  }
}
