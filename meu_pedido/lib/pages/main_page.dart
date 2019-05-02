import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[200],
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(0.0),
              child: Image.network(
                  'https://www.welcomechef.com.br/imgs/blog/interna/1d6b4a1999027127f3f5f19bc87da2ff.jpg'),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: 75.0, left: 50.0, right: 50.0, bottom: 30.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Meu Pedido',
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50.0),
                  ),
                  Text(
                    'Faça seu pedido de maneira facil, sem se preocupar com filas!',
                    style: TextStyle(fontSize: 18.0),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Código da Mesa',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            RaisedButton(
              child: Text('Confirmar', style: TextStyle(fontSize: 18.0, color: Colors.white),),
              onPressed: () {},
              color: Colors.orange,
            )
          ],
        ),
      ),
    );
  }
}
