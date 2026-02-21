
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsPage extends StatefulWidget{
  @override
  _SettingsPageState createState()=>_SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage>{
  bool isDark=false;
  TextEditingController serverController=TextEditingController();

  @override
  void initState(){
    super.initState();
    loadSettings();
  }

  void loadSettings() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(()=>{
      isDark=prefs.getBool('darkMode')??false,
      serverController.text=prefs.getString('serverUrl')??''
    });
  }

  void saveSettings() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('darkMode',isDark);
    prefs.setString('serverUrl',serverController.text);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Settings Saved')));
  }

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        children:[
          SwitchListTile(title: Text('Dark Mode'), value:isDark, onChanged:(val)=>setState(()=>isDark=val)),
          TextField(controller:serverController, decoration: InputDecoration(labelText:'Server URL', border: OutlineInputBorder())),
          SizedBox(height:8),
          ElevatedButton(onPressed: saveSettings, child: Text('Save Settings')),
        ],
      ),
    );
  }
}
