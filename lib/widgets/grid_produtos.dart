import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridProdutos extends StatelessWidget {
  final moveis;

  GridProdutos({this.moveis});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemCount: moveis.length,
      itemBuilder: (BuildContext context, int indice) {
        final movel = moveis[indice];

        return Container(child: Text('$movel'));
      },
    );
  }
}
