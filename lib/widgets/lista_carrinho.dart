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
                Expanded(
                  child: Container(
                    height: 92,
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(movel!.titulo ?? ''),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('${movel!.preco}'),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () => _aumentarQuantidade(item),
                                  child: Container(
                                    margin: EdgeInsets.all(8),
                                    child: Icon(
                                      Icons.add,
                                      size: 14,
                                    ),
                                  ),
                                ),
                                Text('${item.quantidade}'),
                                GestureDetector(
                                  onTap: () => _diminuirQuantidade(item),
                                  child: Container(
                                    margin: EdgeInsets.all(8),
                                    child: Icon(
                                      Icons.remove,
                                      size: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  _aumentarQuantidade(ItemCarrinho item){
    item.quantidade++;
  }

  _diminuirQuantidade(ItemCarrinho item){
    item.quantidade--;
  }
}