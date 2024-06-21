import 'package:flutter/material.dart';
import 'package:qualidadecompdca/screens/pages/my_home_page.dart';

class Checklist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Checklist'),
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
                    width: 190.0,
                    margin: EdgeInsets.only(right: 10.0),
                    child: Card(
                      elevation: 2.0,
                      color: cardColor,
                      child: ListTile(
                        leading: Icon(iconData),
                        title: Text(
                          title,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            
            Expanded(
              child: ListView(
                children: <Widget>[
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
                                    leading: Icon(Icons.add),
                                    title: Text('Checklist de Segurança'),
                                    subtitle: Text('Segurança do Trabalho'),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.add),
                                    title: Text('Checklist de Qualidade'),
                                    subtitle: Text('Controle de Qualidade'),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.add),
                                    title: Text('Procedimento de Inspeção Final'),
                                    subtitle: Text('Controle de Qualidade'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                print('Todos button pressed');
                              },
                              child: Text('Todos'),
                            ),
                          ],
                         ),
                      ],
                    ),
                  ),
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
                                    leading: Icon(Icons.cancel),
                                    title: Text('Conteúdo da Aba 2'),
                                    subtitle: Text('Detalhes da Aba 2.'),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.cancel),
                                    title: Text('Conteúdo da Aba 2'),
                                    subtitle: Text('Detalhes da Aba 2.'),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.cancel),
                                    title: Text('Conteúdo da Aba 2'),
                                    subtitle: Text('Detalhes da Aba 2.'),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.cancel),
                                    title: Text('Conteúdo da Aba 2'),
                                    subtitle: Text('Detalhes da Aba 2.'),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.cancel),
                                    title: Text('Conteúdo da Aba 2'),
                                    subtitle: Text('Detalhes da Aba 2.'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                print('Todos button pressed');
                              },
                              child: Text('Todos'),
                            ),
                          ],
                         ),
                      ],
                    ),
                  ),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end, 
                          children: [
                            TextButton(
                              onPressed: () {
                                print('Todos button pressed');
                              },
                              child: Text('Todos'),
                            ),
                          ],
                         ),
                      ],
                    ),
                  ),
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
                                    leading: Icon(Icons.person),
                                    title: Text('Conteúdo da Aba 4'),
                                    subtitle: Text('Detalhes da Aba 4.'),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.person),
                                    title: Text('Conteúdo da Aba 4'),
                                    subtitle: Text('Detalhes da Aba 4.'),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.person),
                                    title: Text('Conteúdo da Aba 4'),
                                    subtitle: Text('Detalhes da Aba 4.'),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.person),
                                    title: Text('Conteúdo da Aba 4'),
                                    subtitle: Text('Detalhes da Aba 4.'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                print('Todos button pressed');
                              },
                              child: Text('Todos'),
                            ),
                          ],
                         ),
                      ],
                    ),
                  ),
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
                                    leading: Icon(Icons.apartment),
                                    title: Text('Conteúdo da Aba 5'),
                                    subtitle: Text('Detalhes da Aba 5.'),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.apartment),
                                    title: Text('Conteúdo da Aba 5'),
                                    subtitle: Text('Detalhes da Aba 5.'),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.apartment),
                                    title: Text('Conteúdo da Aba 5'),
                                    subtitle: Text('Detalhes da Aba 5.'),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.apartment),
                                    title: Text('Conteúdo da Aba 5'),
                                    subtitle: Text('Detalhes da Aba 5.'),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.apartment),
                                    title: Text('Conteúdo da Aba 5'),
                                    subtitle: Text('Detalhes da Aba 5.'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                print('Todos button pressed');
                              },
                              child: Text('Todos'),
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
    );
  }
}
