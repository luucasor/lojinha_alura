import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lojinha_alura/main.dart';
import 'package:lojinha_alura/modelos/item_carrinho.dart';
import 'package:lojinha_alura/modelos/movel.dart';
import 'package:lojinha_alura/widgets/texto_detalhes.dart';

class CardDetalhes extends StatelessWidget {
  final formatacaoReais = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
  final Movel? movel;
  final Function? atualizaPagina;

  CardDetalhes({this.movel, this.atualizaPagina});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextoDetalhes(texto: movel!.titulo, estilo: Theme.of(context).textTheme.headline1,),
          TextoDetalhes(texto: movel!.descricao),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  formatacaoReais.format(movel!.preco),
                  style: Theme.of(context).textTheme.headline1,
                ),
                TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Theme.of(context).primaryColor)),
                  onPressed: () {
                    _adicionarItemCarrinho(
                      ItemCarrinho(quantidade: 1, movel: movel)
                    );
                  },
                  child: Text(
                    'Comprar',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  _adicionarItemCarrinho(ItemCarrinho item){
    Inicio.itensCarrinho.add(item);
    atualizaPagina!();
  }
}