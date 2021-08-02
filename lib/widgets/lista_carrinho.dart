import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lojinha_alura/main.dart';
import 'package:lojinha_alura/modelos/item_carrinho.dart';
import 'package:lojinha_alura/modelos/movel.dart';

class ListaCarrinho extends StatelessWidget {
  final List<ItemCarrinho> carrinho = Inicio.itensCarrinho;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: carrinho.length,
      itemBuilder: (BuildContext, int indice) {
        ItemCarrinho item = carrinho[indice];
        Movel? movel = item.movel;
        return Container(
          margin: EdgeInsets.all(16),
          child: Card(
            clipBehavior: Clip.hardEdge,
            child: Row(
              children: [
                Image(
                  image: AssetImage('utilidades/assets/imagens/${movel!.foto}'),
                  height: 92,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(movel!.titulo ?? ''),
                      Text('${movel!.preco}'),
                      Text('${item.quantidade}'),
                    ],
                  ),
                ),
              ],
            ),),
        );
      },
    );
  }
}
