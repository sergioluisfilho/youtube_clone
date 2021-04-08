import 'package:flutter/material.dart';
import 'package:youtube/telas/Biblioteca.dart';
import 'package:youtube/telas/Inicio.dart';
import 'package:youtube/telas/Inscricao.dart';
import 'package:youtube/telas/EmAlta.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indiceAtual = 0;

  List<Widget> telas = [
    Inicio(),
    EmAlta(),
    Inscricao(),
    Biblioteca()

  ];

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
      body: telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: (int indice){
          setState(() {
            _indiceAtual = indice;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            label: "Iníco",
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              label: "Em alta",
              icon: Icon(Icons.whatshot)
          ),
          BottomNavigationBarItem(
              label: "Inscrições",
              icon: Icon(Icons.subscriptions)
          ),
          BottomNavigationBarItem(
              label: "Biblioteca",
              icon: Icon(Icons.folder)
          )
        ],
      ),
    );
  }
}
