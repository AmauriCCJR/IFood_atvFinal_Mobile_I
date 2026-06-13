// Importando o pacote principal do Flutter com caracteristicas visuais (Text, Button, etc.)
import 'package:flutter/material.dart';
// Importando a tela de Checkout para navegação
import 'checkout.dart';

// Criando o widget Stateful 
class Checkin extends StatefulWidget {

  // Construtor da classe
  const Checkin({super.key});

  // Criando o estado da página
  @override
  State<Checkin> createState() => _CheckinState();
}

// Classe responsável pelo estado da tela
class _CheckinState extends State<Checkin> {
  @override
  Widget build(BuildContext context) {
    // Método principal que constrói o esqueleto da página
    return Scaffold(
      backgroundColor: Colors.white,  // Cor de fundo da tela
      
      // SEÇÃO 1 - Barra superior, cabeçalho
      appBar: AppBar(  
        backgroundColor: Colors.white,  // Cor do AppBar
        title: Text("Sacola"),  // Título exibido no centro
        centerTitle: true,  // Centraliza o título

        // Botões do lado direito
        actions: [  
          // Contexto para acessar o Scaffold
          Builder(
            builder: (context) => TextButton(
              onPressed: () {   // Ação ao clicar
                Scaffold.of(context).openEndDrawer();  // Abre o menu lateral direito
              },
              child: Text(
                "Limpar",   // Texto do botão
                style: TextStyle(
                  color: Colors.red,  // Cor vermelha
                  fontSize: 14,  // Tamanho da fonte
                  fontWeight: FontWeight.w500,   // Peso da fonte
                ),
              ),
            ),
          ),
        ],
      ),


      // Corpo da página
      body: SingleChildScrollView(       
        // Permite rolagem vertical
        scrollDirection: Axis.vertical,
        child: Column(
          children: [

            // SEÇÃO 2 - Informações da loja
            SizedBox(
              child: Row(
                children: [
                  SizedBox(width: 15),   // Espaçamento lateral

                  // Foto da loja
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,    // Forma circular
                      image: DecorationImage(
                        image: AssetImage('assets/images/loja1.jpeg'),
                        fit: BoxFit.cover,  // Ajuste da imagem
                      ),
                    ),
                  ),

                  SizedBox(width: 12), // Espaço entre foto e texto

                  // Informações da loja
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Nome da loja
                      Text(
                        "Loja 1",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      
                      // Link para adicionar itens
                      Text(
                        "Adicionar mais itens",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 15),  // Espaçamento

            //SEÇÃO 3 - ITENS ADICIONADOS 
            Text( //Título da seção
              "Itens adicionados",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 15),

            // Card do produto
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(12),
              child: Row(
                children: [

                  // Imagem do produto
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/pizza.jpeg',
                      width: 64,
                      height: 64,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 12),

                  // Informações da pizza
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Nome do produto
                        Text(
                          'Pizza Mussarela ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        // Descrição do produto
                        Text(
                          'Mussarela com tomate e muito queijo',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Text(
                            // Preço atual
                              'R\$ 52,99',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 6),
                            Text(
                            // Preço antigo
                              'R\$ 54,99',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                // Risco no texto
                                decoration:
                                    TextDecoration.lineThrough, //Corta linha
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Linha horizontal contendo os botões de quantidade
                  Row(
                    children: [
                      // Botão para remover item da sacola
                      ElevatedButton(
                        onPressed: () {},
                        // Ícone de lixeira
                        child: Icon(Icons.delete_outline, color: Colors.red),
                      ),
                      
                      // Espaçamento
                      SizedBox(width: 8),
                      // Quantidade atual do produto
                      Text(
                        '1',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      // Espaçamento
                      SizedBox(width: 8),
                      // Botão para adicionar mais unidades
                      ElevatedButton(
                        onPressed: () {},
                        // Ícone de adicionar
                        child: Icon(Icons.add, color: Colors.red),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // SEÇÃO 3 - ADICIONAR MAIS ITENS
            SizedBox(height: 10),
            // Texto para incentivar a compra de mais produtos
            Text(
              "Adicionar mais itens",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 15), // Espaçamento

            // Container com altura fixa
            SizedBox(
              height: 200,

              child: Row(
                children: [
                  // Fazendo o conteúdo ocupar todo espaço disponível
                  Expanded(
                    child: Row(
                      children: [
                        // Espaçamento lateral
                        Padding( 
                          padding: EdgeInsetsGeometry.symmetric(horizontal: 15),
                        ),

                        // Coluna contendo produto sugerido
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                            ),
                            Stack(
                              children: [
                              // Imagem do produto
                                Container(
                                  height: 120,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/saladas.jpeg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                
                                // Botão flutuante "+"
                                Positioned(
                                  bottom: 6,
                                  right: 6,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black54,
                                          blurRadius: 4,
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.red,
                                      size: 25,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            
                            // Informações do produto
                            Column(
                              children: [
                                // Preço
                                Text("R\$ 14,89", textAlign: TextAlign.left, style: TextStyle( fontWeight: FontWeight.w600)),
                                Text(
                                  "Prato de Salada\n 500g", textAlign: TextAlign.left, style: TextStyle( fontWeight: FontWeight.w600)
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                            ),
                            Stack(
                              children: [
                                Container(
                                  height: 120,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/doces.jpeg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 6,
                                  right: 6,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black54,
                                          blurRadius: 4,
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.red,
                                      size: 25,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text("R\$ 8,79", textAlign: TextAlign.left, style: TextStyle( fontWeight: FontWeight.w600)),
                                Text(
                                  "Pudim \n 200g",textAlign: TextAlign.left, style: TextStyle( fontWeight: FontWeight.w600)
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                            ),
                            Stack(
                              children: [
                                Container(
                                  height: 120,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/lanches.jpeg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 6,
                                  right: 6,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black54,
                                          blurRadius: 4,
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.red,
                                      size: 25,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            Column(
                              children: [
                                Text("R\$ 22,48", textAlign: TextAlign.left, style: TextStyle( fontWeight: FontWeight.w600),),
                                Text(
                                  "MAK Lanche Happy\n 400g",textAlign: TextAlign.left, style: TextStyle( fontWeight: FontWeight.w600)
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 40),

            // 4ª SEÇÃO - CUPOM
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    // Espaço entre os lados
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          // Ícone de cupom
                          Icon(Icons.local_offer_sharp),
                          SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Título
                              Text(
                                "Cupom",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              // Descrição
                              Text(
                                "Digite um código",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // Ação do usuário
                      Text("Digitar", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),

               
                //5ª SEÇÃO - CUPONS DISPONÍVEIS
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          // Ícone de benefício
                          Icon(
                            Icons.diamond_rounded,
                            color: Colors.purple,
                            size: 18,
                          ),
                          SizedBox(width: 8),
                          // Texto promocional
                          Text("Cupons de até R\$ 10 off aqui"),
                        ],
                      ),
                      // Botão textual
                      Text("Pegar", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),

                

                Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Resumo de valores",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Total com a entrega",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Text(
                        "R\$ 52,99 / 1 item",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () {
                        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => checkout()),
          );
                      },
                      child: Text(
                        "Continuar",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
