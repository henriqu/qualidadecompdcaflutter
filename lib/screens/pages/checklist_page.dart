import 'package:flutter/material.dart';

class Checklist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Checklist'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.zero,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Quantidade de colunas
                crossAxisSpacing: 10.0, // Espaçamento entre colunas
                mainAxisSpacing: 10.0, // Espaçamento entre linhas
                childAspectRatio: 1.0, // Proporção entre largura e altura dos cards
              ),
              itemCount: 4, // Quantidade total de cards
              itemBuilder: (BuildContext context, int index) {
                IconData iconData;
                String title;

                // Definindo ícone e título para cada card baseado no índice
                switch (index) {
                  case 0:
                    iconData = Icons.favorite;
                    title = 'Card 1';
                    break;
                  case 1:
                    iconData = Icons.star;
                    title = 'Card 2';
                    break;
                  case 2:
                    iconData = Icons.shopping_cart;
                    title = 'Card 3';
                    break;
                  case 3:
                    iconData = Icons.camera_alt;
                    title = 'Card 4';
                    break;
                  default:
                    iconData = Icons.error;
                    title = 'Error';
                }

                return Card(
                  elevation: 2.0,
                  child: ListTile(
                    leading: Icon(iconData), // Ícone dinâmico para cada card
                    title: Text(title), // Título dinâmico para cada card
                  ),
                );
              },
            ),
          ),
          // Card envolvendo a lista de ListTile
          Card(
            elevation: 2.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                ListTile(
                  leading: Icon(Icons.how_to_reg),
                  title: Text('Aba 3'),
                  subtitle: Text('Conteúdo da Aba 3.'),
                ),
                ListTile(
                  leading: Icon(Icons.how_to_reg),
                  title: Text('Aba 3'),
                  subtitle: Text('Conteúdo da Aba 3.'),
                ),
                ListTile(
                  leading: Icon(Icons.how_to_reg),
                  title: Text('Aba 3'),
                  subtitle: Text('Conteúdo da Aba 3.'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
