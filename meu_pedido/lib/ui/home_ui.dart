import 'package:flutter/material.dart';
import 'package:meu_pedido/tab/home_tab.dart';
import 'package:meu_pedido/tab/products_tab.dart';
import 'package:meu_pedido/widgets/custom_drawer.dart';

class HomeScreen extends StatelessWidget {

  final _pageCtrl = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageCtrl,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageCtrl),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text('Produtos'),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageCtrl),
          body: ProductsTab(),
        ),
        Container(color: Colors.blue,),
        Container(color: Colors.yellow,),
      ],
    );
  }
}