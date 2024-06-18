import 'package:flutter/material.dart';
import 'package:qualidadecompdca/screens/pages/information_page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _showNotifications = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildHeader(),
              Information(),
              SizedBox(height: 5),
            ],
          ),
          if (_showNotifications)
            Positioned(
              top: 60.0, 
              right: 20.0, 
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _showNotifications = false;
                  });
                },
                child: _buildNotificationsArea(),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            CircleAvatar(
              radius: 20.0,
              backgroundColor: Colors.grey,
              child: Text('U'),
            ),
            SizedBox(width: 10),
            Text(
              'Olá, Victor Henrique',
              style: TextStyle(fontSize: 15.0),
            ),
          ],
        ),
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {
            setState(() {
              _showNotifications = !_showNotifications;
            });
          },
        ),
      ],
    );
  }

  Widget _buildNotificationsArea() {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Notificações',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Aqui vão as suas notificações...',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _showNotifications = false;
              });
            },
            child: Text('Fechar'),
          ),
        ],
      ),
    );
  }
}
