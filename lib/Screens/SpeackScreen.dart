import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class speackScreen extends StatefulWidget {
  const speackScreen({Key? key}) : super(key: key);

  @override
  State<speackScreen> createState() => _speackScreenState();
}

class _speackScreenState extends State<speackScreen> {

  final videoUrl="https://youtu.be/ysovLhK240E";
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    final videoId=YoutubePlayer.convertUrlToId(videoUrl);
    _controller = YoutubePlayerController(initialVideoId: videoId!,
    flags: const YoutubePlayerFlags(
      autoPlay: false,

    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("video from youtube"),
      ),
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              YoutubePlayer(controller: _controller,
              showVideoProgressIndicator: true,
              onReady: () => debugPrint('ready'),
                bottomActions: [
                  CurrentPosition(),
                  ProgressBar(
                    isExpanded: true,
                    colors: const ProgressBarColors(
                      playedColor: Colors.amber,
                      handleColor: Colors.amberAccent
                    ),
                  ),
                  const PlaybackSpeedButton(),
                ],
              )
            ],
    ),
    );
  }
}
