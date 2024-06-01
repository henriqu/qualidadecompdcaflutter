import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/procedimentos.dart';
import 'screens/checklist.dart';
import 'screens/manuais.dart';
import 'screens/configuracoes.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = Home();
        break;
      case 1:
        page = Checklist();
        break;
      case 2:
        page = Procedimentos();
        break;
      case 3:
        page = Manuais();
        break;
      case 4:
        page = Configuracoes();
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Row(
            children: [
              SafeArea(
                child: NavigationRail(
                  extended: constraints.maxWidth >= 600,
                  destinations: [
                    NavigationRailDestination(
                      icon: Icon(Icons.home),
                      label: Text('Home'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.checklist), 
                      label: Text('Checklist'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.library_add_check),
                      label: Text('Procedimentos'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.library_books), 
                      label: Text('Manuais'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.settings), 
                      label: Text('Configurações'),
                    ),
                  ],
                  selectedIndex: selectedIndex,
                  onDestinationSelected: (value) {
                    setState(() {
                      selectedIndex = value;
                    });
                  },
                ),
              ),
              Expanded(
                child: Container(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: page,
                  ),
                ),
              ),
            ],
          ),
          floatingActionButton: selectedIndex == 0 ? FloatingActionButton(
            onPressed: () {
              // Ação do botão do menu flutuante
              _showMenu(context);
            },
            child: Icon(Icons.add),
          )
          : null,
        );
      },
    );
  }

  void _showMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.checklist),
                title: Text('Checklist'),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    selectedIndex = 2; // Altera para a página de Checklist
                  });
                },
              ),
              ListTile(
                leading: Icon(Icons.library_add_check),
                title: Text('Procedimentos'),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    selectedIndex = 1; // Altera para a página de Procedimentos
                  });
                },
              ),
              ListTile(
                leading: Icon(Icons.library_books),
                title: Text('Manual'),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    selectedIndex = 3; // Altera para a página de Manual
                  });
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
