import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:musicplayer/Widgets/footer.dart';
import 'package:musicplayer/Widgets/nextSongButton.dart';
import 'package:musicplayer/Widgets/pausebutton.dart';
import 'package:musicplayer/Widgets/playbutton.dart';
import 'package:musicplayer/Widgets/prevSongHandler.dart';
import 'package:musicplayer/Widgets/slider.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:musicplayer/Widgets/songTitle.dart';
import './songsList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioPlayer _audioPlayer = AudioPlayer();
  AudioCache cache;
  // this can handle the state of played music
  AudioPlayerState audioPlayerState = AudioPlayerState.PAUSED;

  Duration position = new Duration();
  Duration musicLength = new Duration();

  int currentSongIndex = 0;
  String path;
  void onPlayHandler() async {
    path = songsList[currentSongIndex]["title"];
    // print(audioPlayerState);
    if (audioPlayerState == AudioPlayerState.PAUSED) {
      await cache.play(path);
    }
    if (audioPlayerState == AudioPlayerState.PLAYING) {
      await _audioPlayer.pause();
    }
  }

  void songChangeHandler(String type) async{
    setState(() {
      if (type == 'next'){
      currentSongIndex = (currentSongIndex + 1) % 4;
      } 
      if (type == 'prev') {
        currentSongIndex = (currentSongIndex - 1) % 4;
      }
    });
    path = songsList[currentSongIndex]["title"];
    if (audioPlayerState == AudioPlayerState.PLAYING){
    await cache.play(path);
    }
  }

  @override
  void initState() {
    // ignore: todo
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
    // ignore: todo
    // TODO: implement dispose
    super.dispose();
    _audioPlayer.release();
    _audioPlayer.dispose();
    cache.clearCache();
  }

  @override
  Widget build(BuildContext context) {
    print(currentSongIndex);
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
            SongTitle(
              songsList[currentSongIndex]["title"],
              songsList[currentSongIndex]["artists"]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                PrevSongButton(songChangeHandler),
                audioPlayerState == AudioPlayerState.PAUSED
                    ? PlayButton(onPlayHandler)
                    : PauseButton(onPlayHandler),
                NextSongButton(songChangeHandler),
              ],
            ),
          ],
        ));
  }
}
