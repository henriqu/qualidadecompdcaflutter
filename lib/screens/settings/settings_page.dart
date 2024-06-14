import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SettingsPage(),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
        backgroundColor: Colors.transparent, // Make the app bar transparent to blend with the background image
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://via.placeholder.com/150'), // Replace with your image URL
            fit: BoxFit.cover, // Make the image cover the entire container
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                  ),
                  title: Text('Victor Henrique'),
                ),
              ),
              SizedBox(height: 40),
              Card(
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Perfil'),
                  onTap: () {
                  },
                ),
              ),
              SizedBox(height: 10),
              Card(
                child: ListTile(
                  leading: Icon(Icons.info),
                  title: Text('Sobre o Aplicativo'),
                  onTap: () {
                  },
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                },
                child: Text('Sair'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

