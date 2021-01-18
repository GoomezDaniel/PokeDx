import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

/// Constructor del Soundtrack al iniciarse la aplicación
class AudioLoad extends StatefulWidget {
  const AudioLoad({
    Key key,
  }) : super(key: key);

  @override
  _AudioLoadState createState() => _AudioLoadState();
}

class _AudioLoadState extends State<AudioLoad> {
  final soundtrack = AssetsAudioPlayer();
  IconData iconoVolumen = Icons.volume_up;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: GestureDetector(
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50)),
            child: Icon(
              iconoVolumen,
              color: Colors.black,
            ),
          ),
          onTap: () {
            setState(() {
              if (iconoVolumen == Icons.volume_up) {
                iconoVolumen = Icons.volume_off;
                soundtrack.setVolume(0);
              } else {
                iconoVolumen = Icons.volume_up;
                soundtrack.setVolume(1);
              }
            });
          }),
    );
  }

  @override
  void initState() {
    super.initState();
    soundtrack.open(Audio("assets/soundtrack.mp3"),
        autoStart: true, loopMode: LoopMode.single);
  }

  @override
  void dispose() {
    super.dispose();
    soundtrack.setVolume(0);
    soundtrack.dispose();
  }
}
