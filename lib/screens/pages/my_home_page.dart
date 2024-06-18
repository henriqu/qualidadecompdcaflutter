import 'package:flutter/material.dart';
import 'package:qualidadecompdca/creation/procedimentos/create_procedimentos_page.dart';
import 'home_page.dart';
import 'procedimentos_page.dart';
import 'checklist_page.dart';
import 'manuais_page.dart';
import '../settings/settings_page.dart';
import 'package:qualidadecompdca/creation/checklist/create_checklist_page.dart';

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
        page = SettingsPage();
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
                  color: Color(0xFFCEE8F2), // Set the background color to #CEE8F2
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
              _showMenu(context);
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.green,
          ) : null,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChecklistCreationPage()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.library_add_check),
                title: Text('Procedimentos'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProcedureForm()),
                  );
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
