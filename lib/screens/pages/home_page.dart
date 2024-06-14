import 'package:flutter/material.dart';
import 'package:qualidadecompdca/screens/pages/information_page.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          olausuario(context),
          Information(),
          SizedBox(height: 5),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
          ),
        ],
      ),
    );
  }

  Widget olausuario(BuildContext context) {
    return Row(
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
        Padding(
          padding: EdgeInsets.only(left: 80.0), 
          child: Icon(
            Icons.notifications,
            color: Colors.black, 
          ),
        ),
      ],
    );
  }
}
