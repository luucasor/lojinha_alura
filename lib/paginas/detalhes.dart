

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detalhes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes'),
      ),
      body: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, '/carrinho');
        },
        child: Text('Agora para a página carrinho'),
      ),
    );
  }

}