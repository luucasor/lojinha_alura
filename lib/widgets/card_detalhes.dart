import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lojinha_alura/modelos/movel.dart';
import 'package:lojinha_alura/widgets/texto_detalhes.dart';

class CardDetalhes extends StatelessWidget {
  final formatacaoReais = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');
  final Movel? movel;

  CardDetalhes({this.movel});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          TextoDetalhes(texto: movel!.titulo),
          TextoDetalhes(texto: movel!.descricao),
          Row(
            children: [
              Text(
                formatacaoReais.format(movel!.preco),
              ),
              TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
                  ),
                  onPressed: () {},
                  child: Text('Comprar'),
              )
            ],
          )
        ],
      ),
    );
  }
}
