import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey, opacity: 1
        ),
        backgroundColor: Colors.white,
        title: Image.asset("imagens/youtube.png",
        width: 98,
          height: 22,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: (){
              print('Video');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              print('Pesquisa');
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: (){
              print('Conta');
            },
          )
        ],


      ),
      body: Container(),
    );
  }
}
