import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/material.dart';

const _tituloAppBar = 'Criando Transferencia';
const _rotuloCampoValor = 'Valor';
const _dicaCampoValor = '0.00';
const _rotuloCampoNumeroConta = 'Número da conta';
const _dicaCampoNumeroConta = '0000';
const _textoBotaoConfirmar = 'Confirmar';

class FormularioTransferencia extends StatefulWidget {
  const FormularioTransferencia({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTransferencia> {
  final _inputNumeroConta = TextEditingController();
  final _inputValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(_tituloAppBar),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Editor(
                titulo: _rotuloCampoNumeroConta,
                dica: _dicaCampoNumeroConta,
                valor: _inputNumeroConta,
              ),
              Editor(
                titulo: _rotuloCampoValor,
                dica: _dicaCampoValor,
                valor: _inputValor,
                icone: Icons.monetization_on,
              ),
              ElevatedButton(onPressed: () => _criaTransferencia(context),
                  child: const Text(_textoBotaoConfirmar))],
          ),
        )
    );
  }


  void _criaTransferencia(BuildContext context) {
    final transferenciaCriada = Transferencia(double.tryParse(_inputValor.text),
        int.tryParse(_inputNumeroConta.text));
    debugPrint('$transferenciaCriada');
    Navigator.pop(context, transferenciaCriada);
  }
}