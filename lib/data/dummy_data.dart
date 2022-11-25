import 'dart:io';

import 'package:flutter/material.dart';
import '../models/rotas.dart';
import '../models/rotas_detalhes.dart';

const DUMMY_ROTAS = [
  Rota(
    id: 'r1',
    title: 'GASTRONÔMICA',
    image: "img/gastro-index.jpg",
    parceiros: ["img/gastro/dvitto.jpg","img/gastro/kanto.jpg","img/gastro/rubinho.jpg","img/gastro/sucata.jpg"],
    parceirosinfo: ["Armmazém D'Vitto","Kanto do Lago","Pizzaria do Rubinho","Sucata Restaurante"],
    intro: "O sabor da nossa terra",
    mapa: "img/gastro-map.jpg",
    tempo: "01h35min",
    nivel: "Médio",
    mapUrl: "https://www.google.com.br/maps/dir//Pizzaria+do+Rubinho/-22.0671064,-48.7404569/Kanto+do+Lago/Armaz%C3%A9m+D'+Vitto/BAR+DA+FORQUILHA,+Bariri+-+SP/Pal%C3%A1cio+Do+Sorvete/Restaurante+Sucata/Venda+da+Queixada+Bariri/@-22.1200487,-48.738822,13z/data=!4m51!4m50!1m0!1m5!1m1!1s0x94bf4adb2c92eed7:0xc356346f6873751c!2m2!1d-48.7327232!2d-22.0618781!1m0!1m5!1m1!1s0x94bf4be797ac6ef1:0x5a3440724dc61fb3!2m2!1d-48.7416218!2d-22.0690755!1m5!1m1!1s0x94bf4aef630296e9:0xd2c18f8d6785aa85!2m2!1d-48.7460467!2d-22.0666201!1m5!1m1!1s0x94bf4b6759abef59:0x1d865c5de9d5aced!2m2!1d-48.7485679!2d-22.0652466!1m5!1m1!1s0x94bf4ae028ea2661:0xed6f9d8bdfef733a!2m2!1d-48.7412008!2d-22.0749016!1m10!1m1!1s0x94bf4b2002f7eeb5:0x54117d52c8fc2a73!2m2!1d-48.7390855!2d-22.0749414!3m4!1m2!1d-48.6896097!2d-22.1392867!3s0x94b8b31bf14c806b:0xa1c3ad97acf7da0c!1m5!1m1!1s0x94b8b2fccd2fd91f:0x87ee79a0cd45a640!2m2!1d-48.6890006!2d-22.1401872!3e1",
    introcolor: Color.fromRGBO(100,30, 30, 0.9),
    descricao: "Escolha ideal para quem quer conhecer pratos típicos e iguarias locais, as opções culinárias dessa rota são de dar água na boca. Vale a pena experimentar!",
  ),
  Rota(
    id: 'r2',
    title: 'CULTURAL',
    image: "img/cultural-index.jpg",
    parceiros: ["img/cultural/dupla.jpg","img/cultural/evento.jpg","img/cultural/mariofava.jpg","img/cultural/museu.jpg"],
    parceirosinfo: ["Monumento Leôncio e Leonel","Eventos culturais","Centro Cultural Mario Fava","Museu Mário Fava"],
    intro: "Histórias da nossa gente",
    mapa: "img/cultural-map.jpg",
    tempo: "01h10min",
    nivel: "Fácil",
    mapUrl: "https://www.google.com.br/maps/dir//-22.0694298,-48.729618/Par%C3%B3quia+Santu%C3%A1rio+N.Sra+Aparecida+-+Av.+Braz+Fortunato,+319+-+Jardim+Santa+Lucia,+Bariri+-+SP,+17250-000/Igreja+Ortodoxa+Antioquina+de+S%C3%A3o+Jorge,+Av.+Jo%C3%A3o+Lemos,+687+-+Vila+Santa+Terezinha,+Bariri+-+SP,+17250-000/''/Museu+M%C3%A1rio+Fava,+R.+Tiradentes,+410+-+Vila+Santa+Terezinha,+Bariri+-+SP,+17250-000/''/@-22.0693971,-48.7402519,16z/data=!3m1!4b1!4m34!4m33!1m0!1m0!1m5!1m1!1s0x94bf4adb8190dc15:0x714f73317d60fff2!2m2!1d-48.7340086!2d-22.0657356!1m5!1m1!1s0x94bf4ae7968754c3:0xc5f132221dfb5791!2m2!1d-48.7402832!2d-22.0666443!1m5!1m1!1s0x94bf4b106d43590d:0xdbf86edd8e3d1a5a!2m2!1d-48.7402629!2d-22.0731519!1m5!1m1!1s0x94bf4b1fd498ab81:0x34f16102170f0c5a!2m2!1d-48.7401937!2d-22.0750917!1m5!1m1!1s0x94bf4adffe582fb3:0x50dc2dfe1edc0592!2m2!1d-48.7391362!2d-22.0743111!3e1",
    introcolor: Color.fromRGBO(140,90, 20, 1),
    descricao: "Destino recheado de história e cultura, essa opção convida o ciclista a conhecer toda tradição da cidade, apresentando centros culturais, religiosos, festivos e o famoso museu Mario Fava.",
  ),
  Rota(
    id: 'r3',
    title: 'RURAL',
    image: "img/rural-index.jpg",
    parceiros: ["img/rural/cabana.jpg","img/rural/capela.jpg","img/rural/lago.jpg","img/rural/tiete.jpg"],
    parceirosinfo: ["Cabana Mateiro","Capela de São José","Lago Municipal","Rio Tietê"],
    intro: "A tranquilidade do campo",
    mapa: "img/rural-map.jpg",
    tempo: "02:45min",
    nivel: "Difícil",
    mapUrl: "https://www.google.com.br/maps/dir//Lago+Municipal+-+Jardim+Beltrame,+Bariri+-+SP/Estrada+Rio+Ti%C3%AAte,+Bariri+-+SP/Igrejinha+da+Queixadinha,+Bariri+-+SP/Capela+de+S%C3%A3o+Jos%C3%A9,+Bariri+-+SP,+17250-000/Cabana+Mateiro,+Bariri+-+SP/@-22.0732703,-48.7308812,15z/data=!4m34!4m33!1m1!4e1!1m5!1m1!1s0x94bf4ae7b1910259:0x68f040fcebf0012d!2m2!1d-48.7414208!2d-22.0669433!1m5!1m1!1s0x94bf4bbb6c918fcd:0xb3d83f7fc8abea85!2m2!1d-48.7731855!2d-22.0957346!1m5!1m1!1s0x94bf4d40a54433df:0x4c5c4cafb260b87c!2m2!1d-48.7337899!2d-22.1368866!1m5!1m1!1s0x94b8b370091bf2b3:0xabc02d72b062d24c!2m2!1d-48.6891094!2d-22.1405292!1m5!1m1!1s0x94b8b4c7164a4425:0x2c27f17aa5840f0a!2m2!1d-48.7054253!2d-22.0819758!3e1",
    introcolor: Color.fromRGBO(50,80, 20, 0.9),
    descricao: "Cercada por diversos atrativos naturais como rios, lagos, construções rurais, mata, entre outros, essa rota oferece condições para a prática do turismo de aventura e ecoturismo.",
  ),
];

const DUMMY_ROTAS_DETALHES = [
  RotasDetalhes(
  id: 'rd1',
  rotas: 'r1',
  title: 'ROTA GASTRONÔMICA',
  image: "img/intro-bg-gastro.jpg",
  ),
  RotasDetalhes(
    id: 'rd2',
    rotas: 'r2',
    title: 'ROTA CULTURAL',
    image: "img/intro-bg-cultural.jpg",
  ),
  RotasDetalhes(
    id: 'rd3',
    rotas: 'r3',
    title: 'ROTA RURAL',
    image: "img/intro-bg-rural.jpg",
  ),
];