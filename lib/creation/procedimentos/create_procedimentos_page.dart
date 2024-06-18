import 'package:flutter/material.dart';


class ProcedureForm extends StatefulWidget {
  @override
  _ProcedureFormState createState() => _ProcedureFormState();
}

class _ProcedureFormState extends State<ProcedureForm> {
  final _formKey = GlobalKey<FormState>();
  String? _department;
  List<String> _departments = ['Financeiro', 'Recursos Humanos', 'TI', 'Marketing'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criação de Procedimentos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Nome do Checklist'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o nome do checklist';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'CNPJ/CPF'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o CNPJ/CPF';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Nome do Cliente'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o nome do cliente';
                  }
                  return null;
                },
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: 'Departamento'),
                value: _department,
                items: _departments.map((String department) {
                  return DropdownMenuItem<String>(
                    value: department,
                    child: Text(department),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _department = newValue;
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
                decoration: InputDecoration(labelText: 'Definição'),
                maxLines: 3,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira a definição';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Referência Normativa'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira a referência normativa';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Frequência'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira a frequência';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Prazos'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira os prazos';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Objetivos'),
                maxLines: 3,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira os objetivos';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _formKey.currentState!.reset();
                    },
                    child: Text('Cancelar'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Processar dados do formulário
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
    );
  }
}
