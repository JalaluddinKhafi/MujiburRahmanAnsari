import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class tafserScreen extends StatefulWidget {
  const tafserScreen({Key? key}) : super(key: key);

  @override
  State<tafserScreen> createState() => _spScreenState();
}

class _spScreenState extends State<tafserScreen> {
  List tafser = [];
  bool _playArea = false;
  late PlayerState _playerState;
  late YoutubeMetaData _videoMetaData;
  bool _isPlayerReady = false;
  late YoutubePlayerController _controller;
  _initData() async {
    await DefaultAssetBundle.of(context)
        .loadString("json/tafser.json")
        .then((value) {
      setState(() {
        tafser = json.decode(value);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Colors.teal),
          child: Column(
            children: [
              _playArea == false
                  ? Container(
                padding:
                const EdgeInsets.only(top: 70, left: 30, right: 30),
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 20,
                              color: Colors.white,
                            )),
                        Expanded(
                          child: Container(),
                        ),
                        Icon(
                          Icons.info_outline,
                          size: 20,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "تفاسیر قرآنکریم از شهید مولانا انصاری (رح)",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              )
                  : Container(
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      padding: const EdgeInsets.only(
                          top: 50, left: 30, right: 30),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 20,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(child: Container()),
                          Icon(Icons.info_outline,
                              size: 20, color: Colors.white)
                        ],
                      ),
                    ),
                    _playView(context),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: _listView(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _onTapVideo(int index) {
    final videoId=YoutubePlayer.convertUrlToId(tafser[index]["videoUrl"]);
    _controller = YoutubePlayerController(initialVideoId: videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        showLiveFullscreenButton: true,
      ),
    );
  }

  _listView() {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      itemCount: tafser.length,
      itemBuilder: (_, int index) {
        return GestureDetector(
          onTap: () {
            _onTapVideo(index);
            debugPrint(index.toString());
            setState(() {
              if (_playArea == false) {
                _playArea = true;
              }
            });
          },
          child: _buildCard(index),
        );
      },
    );
  }

  _buildCard(int index) {
    return Container(
      height: 135,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 150,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(tafser[index]["thumbnail"]),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tafser[index]["title"],
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            children: [
              Container(
                width: 80,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "15s rest",
                    style: TextStyle(
                      color: Color(0xFF839fed),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  for (int i = 0; i < 70; i++)
                    i.isEven
                        ? Container(
                      width: 3,
                      height: 1,
                      decoration: BoxDecoration(
                        color: Color(0xFF839fed),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )
                        : Container(
                      width: 3,
                      height: 1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _playView(BuildContext context) {
    final controller=_controller;
    if(controller!=true&&controller.value.isPlaying){
      return YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        onReady: () {
          _isPlayerReady = true;
        },
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
      );
    }else{
      return YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        onReady: () {
          _isPlayerReady = true;
        },
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
      );
    }

  }
}
