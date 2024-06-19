import 'package:flutter/material.dart';

class CriarManualPage extends StatefulWidget {
  @override
  _CriarManualPageState createState() => _CriarManualPageState();
}

class _CriarManualPageState extends State<CriarManualPage> {
  final _formKey = GlobalKey<FormState>();

  // Controladores de texto
  final TextEditingController _nomeManualController = TextEditingController();
  final TextEditingController _cnpjCpfController = TextEditingController();
  final TextEditingController _nomeClienteController = TextEditingController();
  final TextEditingController _referenciaNormativaController = TextEditingController();
  final TextEditingController _objetivosController = TextEditingController();

  String? _departamentoSelecionado;

  // Lista de departamentos (Exemplo)
  final List<String> _departamentos = [
    'Financeiro',
    'Recursos Humanos',
    'TI',
    'Marketing',
    'Vendas',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criar Procedimento'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: _nomeManualController,
                  decoration: InputDecoration(labelText: 'Nome do Manual'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o nome do manual';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _cnpjCpfController,
                  decoration: InputDecoration(labelText: 'CNPJ/CPF'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o CNPJ ou CPF';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _nomeClienteController,
                  decoration: InputDecoration(labelText: 'Nome do Cliente'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira o nome do cliente';
                    }
                    return null;
                  },
                ),
                DropdownButtonFormField<String>(
                  value: _departamentoSelecionado,
                  decoration: InputDecoration(labelText: 'Departamento'),
                  items: _departamentos.map((String departamento) {
                    return DropdownMenuItem<String>(
                      value: departamento,
                      child: Text(departamento),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      _departamentoSelecionado = newValue;
                    });
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Por favor, selecione um departamento';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _referenciaNormativaController,
                  decoration: InputDecoration(labelText: 'Referência Normativa'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira a referência normativa';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _objetivosController,
                  decoration: InputDecoration(labelText: 'Objetivos'),
                  maxLines: 3,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor, insira os objetivos';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20), // Adicionando espaço extra antes dos botões
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Limpar os campos
                        _formKey.currentState!.reset();
                        _nomeManualController.clear();
                        _cnpjCpfController.clear();
                        _nomeClienteController.clear();
                        _referenciaNormativaController.clear();
                        _objetivosController.clear();
                        setState(() {
                          _departamentoSelecionado = null;
                        });
                      },
                      child: Text('Cancelar'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Salvar os dados
                          // Aqui você pode adicionar a lógica para salvar os dados
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Salvando dados...')),
                          );
                        }
                      },
                      child: Text('Salvar'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
