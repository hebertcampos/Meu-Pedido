import 'package:flutter/material.dart';

class ListInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nome_Estabelecimento'),
        backgroundColor: Colors.orange,
      ),
      body: _card(),
    );
  }

  Widget _card()=> GridView.builder(
    padding: EdgeInsets.all(10.0),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
    ),
    itemCount: 3,
    itemBuilder: (context, index){},
  );
}