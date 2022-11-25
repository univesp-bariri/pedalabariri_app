import 'dart:io';

import 'package:flutter/material.dart';

class Rota {
  final String id;
  final String title;
  final String image;
  final List<String> parceiros;
  final List<String> parceirosinfo;
  final String intro;
  final String mapa;
  final String tempo;
  final String nivel;
  final String mapUrl;
  final Color introcolor;
  final String descricao;

  const Rota({
    required this.id,
    required this.title,
    required this.image,
    required this.parceiros,
    required this.parceirosinfo,
    required this.intro,
    required this.mapa,
    required this.tempo,
    required this.nivel,
    required this.mapUrl,
    required this.introcolor,
    required this.descricao,
  });
}