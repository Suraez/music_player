import 'package:flutter/material.dart';
import 'package:musicplayer/Widgets/footer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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

  Widget body () {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Image.network('https://picsum.photos/250?image=9'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Icon(Icons.fast_rewind),
              Icon(Icons.play_arrow, size: 50.0,),
              Icon(Icons.fast_forward),
            ],
          ),
        ],
      )
    );
  }
}
