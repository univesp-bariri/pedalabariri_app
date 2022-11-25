import 'package:flutter/material.dart';
import 'package:pedala_bariri/mycolors/mycolors.dart';
import '../models/rotas.dart';
import '../utils/app_routes.dart';
import '../models/rotas_detalhes.dart';
import '../screens/tipos_rotas_screen.dart';

class RotaItem extends StatelessWidget {
  const RotaItem({super.key, required this.rota});

  final Rota rota;

  void _selectRotas(BuildContext context) {
    Navigator.of(context).pushNamed(
        AppRoutes.rotas,
        arguments: rota,
      );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectRotas(context),
      child: Card(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 4,
      margin: const EdgeInsets.only(left: 15, top:15,right:15, bottom: 10),
      //borderRadius: BorderRadius.circular(15),
         child: Column (
            children: <Widget> [
              Stack(
              children: [
                  ClipRRect (
                    borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                    child: Image(
                      image: AssetImage(rota.image),
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                Positioned(
                  right: 0,
                  bottom: 20,
                  child: Container(
                    width: 250,
                    color: Colors.black54,
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 25,
                    ),
                    child: Text(
                      rota.title,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                   ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Flexible(
                  //padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          const Icon(
                            Icons.schedule,
                            size: 18,
                          ),
                          const SizedBox(width: 6),
                          Text(
                              rota.tempo,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          const Icon(
                            Icons.directions_bike,
                            size: 18,
                          ),
                          const SizedBox(width: 6),
                          Text(
                            rota.nivel,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
            ],
         ),
      ),
    );
  }
}
