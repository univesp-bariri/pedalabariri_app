import 'package:flutter/material.dart';
import '../models/rotas_detalhes.dart';

class RotasDetalhesItem extends StatelessWidget {
  const RotasDetalhesItem(this.rotasDetalhes, {super.key});

  final RotasDetalhes rotasDetalhes;

  void _selectDetails() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: _selectDetails,
        child: Card(
            margin: EdgeInsets.zero,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Stack(
                  children:  <Widget> [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                      ),
                      child: Image(
                        image: AssetImage(rotasDetalhes.image),
                        height: 300,
                        width: double.maxFinite,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ],
            )
        )
    );
  }
}
