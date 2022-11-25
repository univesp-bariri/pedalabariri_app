import 'package:flutter/material.dart';
import 'package:pedala_bariri/components/rotas_item.dart';
import '../mycolors/mycolors.dart';
import 'home_screen.dart';
import '../models/rotas.dart';
import '../data/dummy_data.dart';


class RotasScreen extends StatelessWidget {
  const RotasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 400,
          childAspectRatio: 3/2,
      ),
      children: DUMMY_ROTAS.map((rot){
        return RotaItem(rota: rot);
      }).toList(),
      ),
    );
  }

}