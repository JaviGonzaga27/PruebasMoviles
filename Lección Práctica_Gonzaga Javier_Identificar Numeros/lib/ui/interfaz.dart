import 'package:flutter/material.dart';
import '../logica/numero.dart';

class NumeroPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NumeroPageState();
}

class NumeroPageState extends State<NumeroPage> {
  final TextEditingController _numero_controlador = TextEditingController();
  String _resultado = '';
  Numero _numero = Numero();

  void _clasificarNumero() {
    final numero = int.tryParse(_numero_controlador.text);

    if (numero == null) {
      setState(() {
        _resultado = 'Ingrese un número válido';
      });
    } else {
      setState(() {
        _resultado = _numero.clasificarNumero(numero);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Clasificar Número',
          style: TextStyle(
            fontSize: 28,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Color(0xff5a37f8),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _numero_controlador,
              decoration: InputDecoration(
                labelText: 'Ingrese un número',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
              ),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _clasificarNumero,
              child: Text('Clasificar'),
            ),
            SizedBox(height: 20),
            Text(
              _resultado,
              style: TextStyle(
                fontSize: 28,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
