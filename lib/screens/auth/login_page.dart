import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qualidadecompdca/screens/pages/my_home_page.dart';

void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login - QualiFlow',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.white,
    body: Center(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipOval(
              child: Image.asset(
                'assets/images/logo.jpg',
                height: 150.0,
                width: 100.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Bem-vindo de volta',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Faça login para acessar sua conta',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 40.0),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Entre com seu e-mail',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Senha',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Checkbox(
                  value: false, 
                  onChanged: (bool? value) {
                  },
                ),
                Text('Lembre-me'),
                Spacer(),
                TextButton(
                  onPressed: () {
                  },
                  child: Text('Esqueceu a senha?'),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                String email = _emailController.text;
                String password = _passwordController.text;
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Text('Entrar'),
            ),
            SizedBox(height: 20.0),
            TextButton(
              onPressed: () {
              },
              child: Text.rich(
                TextSpan(
                  text: 'Novo Membro? ',
                  children: [
                    TextSpan(
                      text: 'Registre-se',
                      style: TextStyle(fontWeight: FontWeight.bold),
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

}
