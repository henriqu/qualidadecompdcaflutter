import 'package:flutter/material.dart';


class User {
  final String name;
  final String email;
  final String photoUrl;

  User({required this.name, required this.email, required this.photoUrl});
}


class UserProfilePage extends StatelessWidget {
  final User user; // Recebe o usuário como parâmetro

  UserProfilePage({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil de Usuário'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(user.photoUrl),
            ),
            SizedBox(height: 20),
            Text(
              user.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              user.email,
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

