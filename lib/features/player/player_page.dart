import 'package:flutter/material.dart';
import 'package:better_player/better_player.dart';

class PlayerPage extends StatelessWidget{
  final String url;
  final bool isLive;

  PlayerPage({required this.url, this.isLive=false});

  @override
  Widget build(BuildContext context){
    BetterPlayerController _controller = BetterPlayerController(BetterPlayerConfiguration(aspectRatio:16/9, autoPlay:true, fullScreenByDefault:false));
    _controller.setupDataSource(BetterPlayerDataSource(BetterPlayerDataSourceType.network, url, liveStream:isLive));

    return Scaffold(
      appBar: AppBar(title: Text(isLive?'LIVE':'Video')),
      body: BetterPlayer(controller: _controller),
    );
  }
}
