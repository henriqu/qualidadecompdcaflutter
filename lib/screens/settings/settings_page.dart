import 'package:flutter/material.dart';
import 'package:qualidadecompdca/screens/auth/login_page.dart';
import 'package:qualidadecompdca/screens/pages/about_page.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
        backgroundColor: Colors.white,
      ),
      body: Container(
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
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => AboutPage()),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginApp()),
                    (Route<dynamic> route) => false,
                  );
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
