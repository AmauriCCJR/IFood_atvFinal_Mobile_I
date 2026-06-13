// Importando o pacote principal do Flutter com caracteristicas visuais (Text, Button, etc.)
import 'package:flutter/material.dart';
// Importando a tela HomePage que será a tela inicial do app
//import 'package:ifood_aplication/HomePage.dart';
import 'package:ifood_aplication/Checkin.dart';
//import 'package:ifood_aplication/Checkout.dart';

// Função para ser o ponto de entrada do app, primeira página
void main() {
  runApp(MaterialApp(  // Inicializa o app Flutter com MaterialApp 
    home: Checkin(),  // Define HomePage como a primeira tela exibida
    debugShowCheckedModeBanner: false, // Remove o banner vermelho do canto superior direito
  ));
}


