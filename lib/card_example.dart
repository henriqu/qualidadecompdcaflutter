import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Container(
              width: 350,
              height: 250,
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: PieChart(
                          PieChartData(
                            sections: [
                              PieChartSectionData(
                                color: Colors.blue,
                                value: 40,
                                title: '40%',
                                radius: 90,
                                titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                              PieChartSectionData(
                                color: Colors.orange,
                                value: 30,
                                title: '30%',
                                radius: 90,
                                titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                              PieChartSectionData(
                                color: Colors.green,
                                value: 20,
                                title: '20%',
                                radius: 90,
                                titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                              PieChartSectionData(
                                color: Colors.red,
                                value: 10,
                                title: '10%',
                                radius: 90,
                                titleStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                            ],
                            centerSpaceRadius: 0,
                            sectionsSpace: 0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Container(
              width: 350,
              height: 250,
              child: Card(
                child: DefaultTabController(
                  length: 3, // Número de abas
                  child: Column(
                    children: <Widget>[
                      const TabBar(
                        tabs: [
                          Tab(text: "Progresso"),
                          Tab(text: "Concluído"),
                          Tab(text: "Aprovado"),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const <Widget>[
                                ListTile(
                                  leading: Icon(Icons.pending),
                                  title: Text('Admissão Pessoal'),
                                  subtitle: Text('DPES.'),
                                ),
                                ListTile(
                                  leading: Icon(Icons.pending),
                                  title: Text('Admissão Pessoal'),
                                  subtitle: Text('DPES.'),
                                ),
                                ListTile(
                                  leading: Icon(Icons.pending),
                                  title: Text('Admissão Pessoal'),
                                  subtitle: Text('DPES.'),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: const <Widget>[
                                ListTile(
                                  leading: Icon(Icons.check_circle),
                                  title: Text('Aba 2'),
                                  subtitle: Text('Conteúdo da Aba 2.'),
                                ),
                                ListTile(
                                  leading: Icon(Icons.check_circle),
                                  title: Text('Aba 2'),
                                  subtitle: Text('Conteúdo da Aba 2.'),
                                ),
                                ListTile(
                                  leading: Icon(Icons.check_circle),
                                  title: Text('Aba 2'),
                                  subtitle: Text('Conteúdo da Aba 2.'),
                                ),
                              ],
                            ),
                            Column(
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
