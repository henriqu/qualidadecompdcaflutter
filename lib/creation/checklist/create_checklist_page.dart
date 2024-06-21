import 'package:flutter/material.dart';
import 'package:qualidadecompdca/screens/pages/my_home_page.dart';

class ChecklistCreationPage extends StatefulWidget {
  @override
  _ChecklistCreationPageState createState() => _ChecklistCreationPageState();
}

class _ChecklistCreationPageState extends State<ChecklistCreationPage> {
  String _nomeChecklist = '';
  String _cnpjCpf = '';
  String _nomeCliente = '';
  String _departamentoSelecionado = 'Recursos Humanos';
  String _itensVerificacao = '';

  final _formKey = GlobalKey<FormState>();

  void _limparFormulario() {
    setState(() {
      _nomeChecklist = '';
      _cnpjCpf = '';
      _nomeCliente = '';
      _departamentoSelecionado = 'Recursos Humanos';
      _itensVerificacao = '';
    });
    Navigator.pop(context);
  }

  void _mostrarConfirmacaoCancelamento() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Cancelar'),
          content: Text('Tem certeza que deseja cancelar essas alterações?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); 
                _limparFormulario(); 
              },
              child: Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); 
              },
              child: Text('Continuar Editando'),
            ),
          ],
        );
      },
    );
  }

  void _mostrarMensagemSucesso() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Sucesso'),
          content: Text('Checklist criado com sucesso!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _limparFormulario(); 
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _mostrarMensagemErro(String mensagem) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Erro'),
          content: Text(mensagem),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _salvarDados() {
    if (_nomeChecklist.isEmpty || _cnpjCpf.isEmpty || _nomeCliente.isEmpty || _itensVerificacao.isEmpty) {
      _mostrarMensagemErro('Todos os campos devem ser preenchidos.');
      return;
    }

    print('Dados salvos:');
    print('Nome do Checklist: $_nomeChecklist');
    print('CNPJ/CPF: $_cnpjCpf');
    print('Nome do Cliente: $_nomeCliente');
    print('Departamento: $_departamentoSelecionado');
    print('Itens de Verificação: $_itensVerificacao');

    _mostrarMensagemSucesso();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criar Checklist'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            _mostrarConfirmacaoCancelamento();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Nome do Checklist'),
                  onChanged: (value) {
                    setState(() {
                      _nomeChecklist = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo obrigatório';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Logo (upload)'),
                  onChanged: (value) {
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(labelText: 'CNPJ/CPF'),
                  onChanged: (value) {
                    setState(() {
                      _cnpjCpf = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo obrigatório';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Nome do Cliente'),
                  onChanged: (value) {
                    setState(() {
                      _nomeCliente = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo obrigatório';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                DropdownButtonFormField(
                  value: _departamentoSelecionado,
                  items: [
                    'Recursos Humanos',
                    'Tecnologia da Informação',
                    'Financeiro',
                  ].map((String value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _departamentoSelecionado = value.toString();
                    });
                  },
                  decoration: InputDecoration(labelText: 'Departamento'),
                ),
                SizedBox(height: 10),
                TextFormField(
                  maxLines: 5,
                  decoration: InputDecoration(labelText: 'Itens de Verificação'),
                  onChanged: (value) {
                    setState(() {
                      _itensVerificacao = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo obrigatório';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: _mostrarConfirmacaoCancelamento,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      child: Text(
                        'Cancelar',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _salvarDados();
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      child: Text(
                        'Salvar',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
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
