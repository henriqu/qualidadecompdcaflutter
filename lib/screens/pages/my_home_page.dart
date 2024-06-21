import 'package:flutter/material.dart';
import 'package:qualidadecompdca/creation/manuais/create_manuais_page.dart';
import 'package:qualidadecompdca/creation/procedimentos/create_procedimentos_page.dart';
import 'package:qualidadecompdca/screens/auth/login_page.dart';
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
        if (constraints.maxWidth >= 600) {
          // Exibir NavigationRail para telas grandes (desktop)
          return Scaffold(
            appBar: AppBar(
              title: Text('QualiFlow - Gestão de Procedimentos'),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    // Função de pesquisa
                  },
                ),
                IconButton(
                  icon: Icon(Icons.notifications),
                  onPressed: () {
                    // Função de notificações
                  },
                ),
                PopupMenuButton<int>(
                  icon: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/logo.jpg'), // Imagem do usuário
                  ),
                  onSelected: (item) => onSelected(context, item),
                  itemBuilder: (context) => [
                    PopupMenuItem<int>(value: 0, child: Text('Perfil')),
                    //PopupMenuItem<int>(value: 1, child: Text('My SimpleTasks')),
                    //PopupMenuDivider(),
                    //PopupMenuItem<int>(value: 2, child: Text('Painel')),
                    //PopupMenuItem<int>(value: 3, child: Text('Central de atendimento')),
                    //PopupMenuItem<int>(value: 4, child: Text('Quadros Rápidos')),
                    //PopupMenuItem<int>(value: 5, child: Text('Navegador de Pendência')),
                    //PopupMenuItem<int>(value: 6, child: Text('Tempo')),
                    //PopupMenuItem<int>(value: 7, child: Text('Insight')),
                    PopupMenuDivider(),
                    PopupMenuItem<int>(value: 8, child: Text('Sair do Sistema')),
                  ],
                ),
              ],
            ),
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
                    color: Color(0xFFCEE8F2),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: page,
                    ),
                  ),
                ),
              ],
            ),
            floatingActionButton: selectedIndex == 0
                ? FloatingActionButton(
                    onPressed: () {
                      _showMenu(context);
                    },
                    child: Icon(Icons.add),
                    backgroundColor: Colors.green,
                  )
                : null,
          );
        } else {
          // Exibir Drawer para telas pequenas (mobile)
          return Scaffold(
            appBar: AppBar(
              title: Text('QualiFlow'),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    // Função de pesquisa
                  },
                ),
                IconButton(
                  icon: Icon(Icons.notifications),
                  onPressed: () {
                    // Função de notificações
                  },
                ),
                PopupMenuButton<int>(
                  icon: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/logo.jpg'), // Imagem do usuário
                  ),
                  onSelected: (item) => onSelected(context, item),
                  itemBuilder: (context) => [
                    PopupMenuItem<int>(value: 0, child: Text('Perfil')),
                    //PopupMenuItem<int>(value: 1, child: Text('My SimpleTasks')),
                    PopupMenuDivider(),
                    //PopupMenuItem<int>(value: 2, child: Text('Painel')),
                    //PopupMenuItem<int>(value: 3, child: Text('Central de atendimento')),
                    //PopupMenuItem<int>(value: 4, child: Text('Quadros Rápidos')),
                    //PopupMenuItem<int>(value: 5, child: Text('Navegador de Pendência')),
                    //PopupMenuItem<int>(value: 6, child: Text('Tempo')),
                    //PopupMenuItem<int>(value: 7, child: Text('Insight')),
                    //PopupMenuDivider(),
                    PopupMenuItem<int>(value: 8, child: Text('Sair do Sistema')),
                  ],
                ),
              ],
            ),
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  /**UserAccountsDrawerHeader(
                    accountName: Text('Nome do Usuário'),
                    accountEmail: Text('Perfil'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/logo.jpg'), // Imagem do usuário
                      child: IconButton(
                        icon: Icon(Icons.camera_alt),
                        onPressed: () {
                          // Função para trocar a foto do usuário
                        },
                      ),
                    ),
                    otherAccountsPictures: <Widget>[
                      IconButton(
                        icon: Icon(Icons.logout),
                        onPressed: () {
                          // Função para sair
                        },
                      ),
                    ],
                  ),**/
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                    onTap: () {
                      Navigator.pop(context);
                      setState(() {
                        selectedIndex = 0;
                      });
                    },
                  ),
                  ExpansionTile(
                    leading: Icon(Icons.checklist),
                    title: Text('Checklist'),
                    children: <Widget>[
                      ListTile(
                        title: Text('Ver Checklist'),
                        onTap: () {
                          Navigator.pop(context);
                          setState(() {
                            selectedIndex = 1;
                          });
                        },
                      ),
                      ListTile(
                        title: Text('Criar Checklist'),
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ChecklistCreationPage()),
                          );
                        },
                      ),
                    ],
                  ),
                  ExpansionTile(
                    leading: Icon(Icons.library_add_check),
                    title: Text('Procedimentos'),
                    children: <Widget>[
                      ListTile(
                        title: Text('Ver Procedimentos'),
                        onTap: () {
                          Navigator.pop(context);
                          setState(() {
                            selectedIndex = 2;
                          });
                        },
                      ),
                      ListTile(
                        title: Text('Criar Procedimento'),
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ProcedureForm()),
                          );
                        },
                      ),
                    ],
                  ),
                  ExpansionTile(
                    leading: Icon(Icons.library_books),
                    title: Text('Manuais'),
                    children: <Widget>[
                      ListTile(
                        title: Text('Ver Manuais'),
                        onTap: () {
                          Navigator.pop(context);
                          setState(() {
                            selectedIndex = 3;
                          });
                        },
                      ),
                      ListTile(
                        title: Text('Criar Manual'),
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CriarManualPage()),
                          );
                        },
                      ),
                    ],
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Configurações'),
                    onTap: () {
                      Navigator.pop(context);
                      setState(() {
                        selectedIndex = 4;
                      });
                    },
                  ),
                ],
              ),
            ),
            body: Container(
              color: Color(0xFFCEE8F2),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: page,
              ),
            ),
            floatingActionButton: selectedIndex == 0
                ? FloatingActionButton(
                    onPressed: () {
                      _showMenu(context);
                    },
                    child: Icon(Icons.add),
                    backgroundColor: Colors.green,
                  )
                : null,
          );
        }
      },
    );
  }

  void onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => UserProfilePage(),
        ));
        break;
      case 1:
        // My SimpleTasks action
        break;
      case 2:
        // Painel action
        break;
      case 3:
        // Central de atendimento action
        break;
      case 4:
        // Quadros Rápidos action
        break;
      case 5:
        // Navegador de Pendência action
        break;
      case 6:
        // Tempo action
        break;
      case 7:
        // Insight action
        break;
      case 8:
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => LoginApp()),
          (route) => false,
        );
        break;
    }
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CriarManualPage()),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu Perfil'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Ação ao pressionar o ícone de engrenagem
            },
          ),
        ],
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20),
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/logo.jpg'), // Imagem do usuário
            child: IconButton(
              icon: Icon(Icons.camera_alt),
              onPressed: () {
                // Função para trocar a foto do usuário
              },
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Victor Henrique dos Santos Oliveira',
            style: TextStyle(fontSize: 20),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Meu Cadastro'),
            onTap: () {
              // Ação ao pressionar "Meu Cadastro"
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Encerrar sessão'),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LoginApp()),
                (Route<dynamic> route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}


