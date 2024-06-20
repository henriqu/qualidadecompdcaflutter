import 'package:flutter/material.dart';
import 'package:qualidadecompdca/screens/pages/my_home_page.dart';

class Procedimentos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Procedimentos'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()), 
                (Route<dynamic> route) => false,
              );
            },
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 120.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(20),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  IconData iconData;
                  String title;
                  Color cardColor;
                  switch (index) {
                    case 0:
                      iconData = Icons.done_all;
                      title = 'Total';
                      cardColor = Color.fromRGBO(35, 219, 105, 86);
                      break;
                    case 1:
                      iconData = Icons.add;
                      title = 'Criados';
                      cardColor = Colors.green;
                      break;
                    case 2:
                      iconData = Icons.cancel;
                      title = 'Cancelados';
                      cardColor = Colors.red;
                      break;
                    case 3:
                      iconData = Icons.how_to_reg;
                      title = 'Aprovados';
                      cardColor = Colors.yellow;
                      break;
                    default:
                      iconData = Icons.error;
                      title = 'Error';
                      cardColor = Colors.grey;
                  }

                  return Container(
                    width: 180.0, // Largura fixa para os cards
                    margin: EdgeInsets.only(right: 10.0), // Espaçamento entre os cards
                    child: Card(
                      elevation: 2.0,
                      color: cardColor,
                      child: ListTile(
                        leading: Icon(iconData), // Ícone dinâmico para cada card
                        title: Text(
                          title,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          ), // Título dinâmico para cada card
                      ),
                    ),
                  );
                },
              ),
            ),
            // Cards with ListTiles and Tabs below the horizontal list of cards
            Expanded(
              child: ListView(
                children: <Widget>[
                  // Card 1 with Tabs
                  Card(
                    elevation: 2.0,
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: TabBar(
                            labelPadding: EdgeInsets.symmetric(horizontal: 16.0),
                            tabs: [
                              Tab(text: 'Criados'),
                            ],
                          ),
                        ),
                        Container(
                          height: 200,
                          child: TabBarView(
                            children: [
                              ListView(
                                children: const <Widget>[
                                  ListTile(
                                    leading: Icon(Icons.how_to_reg),
                                    title: Text('Conteúdo da Aba 1'),
                                    subtitle: Text('Detalhes da Aba 1.'),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.how_to_reg),
                                    title: Text('Conteúdo da Aba 1'),
                                    subtitle: Text('Detalhes da Aba 1.'),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.how_to_reg),
                                    title: Text('Conteúdo da Aba 1'),
                                    subtitle: Text('Detalhes da Aba 1.'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Card 2 with Tabs
                  Card(
                    elevation: 2.0,
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: TabBar(
                            labelPadding: EdgeInsets.symmetric(horizontal: 16.0),
                            tabs: [
                              Tab(text: 'Rejeitados'),
                            ],
                          ),
                        ),
                        Container(
                          height: 200,
                          child: TabBarView(
                            children: [
                              ListView(
                                children: const <Widget>[
                                  ListTile(
                                    leading: Icon(Icons.how_to_reg),
                                    title: Text('Conteúdo da Aba 2'),
                                    subtitle: Text('Detalhes da Aba 2.'),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.how_to_reg),
                                    title: Text('Conteúdo da Aba 2'),
                                    subtitle: Text('Detalhes da Aba 2.'),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.how_to_reg),
                                    title: Text('Conteúdo da Aba 2'),
                                    subtitle: Text('Detalhes da Aba 2.'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Card 3 with Tabs
                  Card(
                    elevation: 2.0,
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: TabBar(
                            labelPadding: EdgeInsets.symmetric(horizontal: 16.0),
                            tabs: [
                              Tab(text: 'Aprovados'),
                            ],
                          ),
                        ),
                        Container(
                          height: 200,
                          child: TabBarView(
                            children: [
                              ListView(
                                children: const <Widget>[
                                  ListTile(
                                    leading: Icon(Icons.how_to_reg),
                                    title: Text('Conteúdo da Aba 3'),
                                    subtitle: Text('Detalhes da Aba 3.'),
                                    trailing: Icon(Icons.file_download),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.how_to_reg),
                                    title: Text('Conteúdo da Aba 3'),
                                    subtitle: Text('Detalhes da Aba 3.'),
                                    trailing: Icon(Icons.file_download),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.how_to_reg),
                                    title: Text('Conteúdo da Aba 3'),
                                    subtitle: Text('Detalhes da Aba 3.'),
                                    trailing: Icon(Icons.file_download),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Card 4 with Tabs
                  Card(
                    elevation: 2.0,
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: TabBar(
                            labelPadding: EdgeInsets.symmetric(horizontal: 16.0),
                            tabs: [
                              Tab(text: 'Por Usuário'),
                            ],
                          ),
                        ),
                        Container(
                          height: 200,
                          child: TabBarView(
                            children: [
                              ListView(
                                children: const <Widget>[
                                  ListTile(
                                    leading: Icon(Icons.how_to_reg),
                                    title: Text('Conteúdo da Aba 4'),
                                    subtitle: Text('Detalhes da Aba 4.'),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.how_to_reg),
                                    title: Text('Conteúdo da Aba 4'),
                                    subtitle: Text('Detalhes da Aba 4.'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Card 5 with Tabs
                  Card(
                    elevation: 2.0,
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: TabBar(
                            labelPadding: EdgeInsets.symmetric(horizontal: 16.0),
                            tabs: [
                              Tab(text: 'Por Departamento'),
                            ],
                          ),
                        ),
                        Container(
                          height: 200,
                          child: TabBarView(
                            children: [
                              ListView(
                                children: const <Widget>[
                                  ListTile(
                                    leading: Icon(Icons.how_to_reg),
                                    title: Text('Conteúdo da Aba 5'),
                                    subtitle: Text('Detalhes da Aba 5.'),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.how_to_reg),
                                    title: Text('Conteúdo da Aba 5'),
                                    subtitle: Text('Detalhes da Aba 5.'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
