import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Usuarios extends StatefulWidget {
  @override
  _ListaUsuario createState() => _ListaUsuario();
}

class _ListaUsuario extends State<Usuarios> {
  List<String> usuarios = [];

  @override
  void initState() {
    super.initState();
    getRequest();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Usuarios"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: usuarios.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: new Text('${index + 1}.- ${usuarios[index]}'),
              ),
            );
          },
        ),
      ),
    ));
  }

  Future getRequest() async {
    var url = Uri.parse('https://randomuser.me/api/?results=100');
    final response = await http.get(url);
    final Map<String, dynamic> responurl = convert.jsonDecode(response.body);

    for (var usuario in responurl['results']) {
      String nombreUsuario;
      nombreUsuario = usuario['name']['title'] + ' ';
      nombreUsuario += usuario['name']['first'] + ' ';
      nombreUsuario += usuario['name']['last'];
      print(responurl);
      usuarios.add(nombreUsuario);
    }
  }
}
