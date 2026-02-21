
import 'package:flutter/material.dart';
import '../player/player_page.dart';

class LivePage extends StatefulWidget {
  @override
  _LivePageState createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> {
  TextEditingController _m3uController = TextEditingController();
  List<String> _channels = [];

  void loadPlaylist(){
    setState(()=>_channels=_m3uController.text.split('\n'));
  }

  void playChannel(String url){
    Navigator.push(context, MaterialPageRoute(builder: (_)=>PlayerPage(url: url, isLive: true)));
  }

  @override
  Widget build(BuildContext context){
    return Column(
      children:[
        Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            children:[
              Expanded(child: TextField(controller:_m3uController, decoration: InputDecoration(hintText:'أدخل رابط M3U', border: OutlineInputBorder()))),
              SizedBox(width:8),
              ElevatedButton(onPressed: loadPlaylist, child: Text('Load')),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: _channels.length,
            itemBuilder:(context,index){
              return ListTile(
                title: Text(_channels[index]),
                trailing: Icon(Icons.play_arrow),
                onTap: ()=>playChannel(_channels[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
