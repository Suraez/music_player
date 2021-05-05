import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:musicplayer/Widgets/footer.dart';
import 'package:musicplayer/Widgets/pausebutton.dart';
import 'package:musicplayer/Widgets/playbutton.dart';
import 'package:musicplayer/Widgets/slider.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool playing = false;

  AudioPlayer _audioPlayer = AudioPlayer();
  AudioCache cache;
  AudioPlayerState audioPlayerState = AudioPlayerState.PAUSED;

  Duration position = new Duration();
  Duration musicLength = new Duration();

  void onPlayHandler() async {
    String path = 'be.mp3';
    setState(() async {
      if (!playing) {
        await cache.play(path);
      } else {
        await _audioPlayer.pause();
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cache = AudioCache(fixedPlayer: _audioPlayer);
    _audioPlayer.onPlayerStateChanged.listen((AudioPlayerState s) {
      setState(() {
        audioPlayerState = s;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _audioPlayer.release();
    _audioPlayer.dispose();
    cache.clearCache();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('My music Player')),
        ),
        body: body(),
        bottomNavigationBar: Footer(),
      ),
    );
  }

  Widget body() {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue[200],
              Colors.pink[200],
            ],
          ),
        ),
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/sd.png'),
            MySlider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(Icons.skip_previous_sharp),
                audioPlayerState == AudioPlayerState.PAUSED
                    ? PlayButton(onPlayHandler)
                    : PauseButton(onPlayHandler),
                Icon(Icons.skip_next),
              ],
            ),
          ],
        ));
  }
}
