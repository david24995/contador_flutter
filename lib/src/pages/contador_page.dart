import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
  _ContadorPageState createState() => _ContadorPageState();

}

class _ContadorPageState extends State<ContadorPage> {

  final textoEstilo = TextStyle(fontSize: 26.0);

  int conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My first App in Flutter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de taps:', style: textoEstilo,),
            Text('$conteo', style: textoEstilo,)
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      children: <Widget>[
        SizedBox(width: 30.0,),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset,),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove),onPressed: _decrementar,),
        SizedBox(width: 5.0),
        FloatingActionButton(child: Icon(Icons.add),onPressed: _incrementar,)
      ],
    );
  }

  void _incrementar() {
    setState( () => conteo++ );
  } 
  void _decrementar() {
    setState( ()=> conteo-- );
  }
  void _reset() {
    setState(() => conteo = 0);
  }
}