import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(minipiano());
}

class minipiano extends StatelessWidget {
  BoxDecoration decoration() {
    return BoxDecoration(
      border: Border(
        bottom: BorderSide(color: Colors.transparent),
      ),
    );
  }

  MaterialButton MatButt(String note) {
    return MaterialButton(
      splashColor: Colors.transparent,
      color: Colors.white,
      onPressed: () {
        final player = AudioCache();
        player.play('$note.mp3');
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
    );
  }

  Positioned PositRgt(String note) {
    return Positioned(
      width: 200,
      top: 60,
      child: MaterialButton(
        child: null,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        splashColor: Colors.transparent,
        color: Colors.black,
        onPressed: () {
          final player = AudioCache();
          player.play('$note.mp3');
        },
      ),
    );
  }

  Positioned PositLft(String note) {
    return Positioned(
      width: 200,
      bottom: 60,
      child: Container(
        child: MaterialButton(
          child: null,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          splashColor: Colors.transparent,
          color: Colors.black,
          onPressed: () {
            final player = AudioCache();
            player.play('$note.mp3');
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Center(child: Text('Mini Piano')),
        ),
        backgroundColor: Colors.white30,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 4, 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: Stack(
                    children: <Widget>[
                      FractionallySizedBox(
                        child: Container(
                          decoration: decoration(),
                          child: MatButt('g'),
                        ),
                        widthFactor: 1,
                        heightFactor: 1,
                      ),
                      PositRgt('f#'),
                    ],
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: <Widget>[
                      FractionallySizedBox(
                        child: Container(
                          child: MatButt('f'),
                          decoration: decoration(),
                        ),
                        widthFactor: 1,
                        heightFactor: 1,
                      ),
                      PositLft('f#'),
                      PositRgt('d#'),
                    ],
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: <Widget>[
                      FractionallySizedBox(
                        child: Container(
                          child: MatButt('e'),
                          decoration: decoration(),
                        ),
                        widthFactor: 1,
                        heightFactor: 1,
                      ),
                      PositRgt('c#'),
                      PositLft('d#'),
                    ],
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: <Widget>[
                      FractionallySizedBox(
                        child: Container(
                          child: MatButt('d'),
                          decoration: decoration(),
                        ),
                        widthFactor: 1,
                        heightFactor: 1,
                      ),
                      PositLft('c#'),
                    ],
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: <Widget>[
                      FractionallySizedBox(
                        child: Container(
                          child: MatButt('c'),
                          decoration: decoration(),
                        ),
                        widthFactor: 1,
                        heightFactor: 1,
                      ),
                      PositRgt('a#'),
                    ],
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: <Widget>[
                      FractionallySizedBox(
                        child: Container(
                          child: MatButt('b'),
                          decoration: decoration(),
                        ),
                        widthFactor: 1,
                        heightFactor: 1,
                      ),
                      PositRgt('g#'),
                      PositLft('a#'),
                    ],
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: <Widget>[
                      FractionallySizedBox(
                        child: Container(
                          child: MatButt('a'),
                          decoration: decoration(),
                        ),
                        widthFactor: 1,
                        heightFactor: 1,
                      ),
                      PositLft('g#'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
