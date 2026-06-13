// Importando os widgets visuais do Flutter
import 'package:flutter/material.dart';
// Importa a tela Checkin para navegação
import 'package:ifood_aplication/checkin.dart';

// Define HomePage como StatefulWidget (tela com estado mutável)
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  // Lista de imagens dos ícones de categoria do menu superior
  final List<String> imagens = [
    'assets/images/hamburguerIcon.png',
    'assets/images/mercados.jpeg',
    'assets/images/farmacias.jpeg',
    'assets/images/bebidas.jpeg',
    'assets/images/viagens.jpeg',
    'assets/images/corridas.jpeg',
    'assets/images/promocoes.jpeg',
    'assets/images/gourmet.jpeg',
    'assets/images/missoes.jpeg',
    'assets/images/vermais.jpeg',
  ];

  // Nomes exibidos abaixo de cada ícone de categoria
  final List<String> titulos = [
    'Restaurante',
    'Mercados',
    'Farmácias',
    'Bebidas',
    'Viagens',
    'Corridas',
    'Promoções',
    'Gourmet',
    'Moedas',
    'Ver Mais',
  ];

  // Imagens dos banners de cupom (carrossel)
  final List<String> cupons = [
    'assets/images/cupom.jpeg',
    'assets/images/cupom2.jpeg',
    'assets/images/cupom3.jpeg',
    'assets/images/cupom4.jpeg',
    'assets/images/cupom5.jpeg',
  ];

  // Imagens dos banners de promoções horizontais
  final List<String> promocoes = [
    'assets/images/oferta.jpeg',
    'assets/images/oferta2.jpeg',
    'assets/images/oferta3.jpeg',
    'assets/images/oferta4.jpeg',
  ];

  // Imagens das lojas (usadas em dois lugares: círculos e lista)
  final List<String> loja = [
    'assets/images/loja1.jpeg',
    'assets/images/loja2.jpeg',
    'assets/images/loja3.jpeg',
    'assets/images/loja1.jpeg',
    'assets/images/loja2.jpeg',
    'assets/images/loja3.jpeg',
    'assets/images/loja1.jpeg',
    'assets/images/loja2.jpeg',
  ];

  // Tempo estimado de entrega de cada loja
  final List<String> tempoLoja = [
    '5-10 min',
    '49-55 min',
    '24-32 min',
    '10-25 min',
    '30-45 min',
    '45 min',
    '15-89 min',
    '2-10 min',
  ];

  // Nomes de cada loja
  final List<String> nomeLoja = [
    'Loja 1',
    'Loja 2',
    'Loja 3',
    'Loja 4',
    'Loja 5',
    'Loja 6',
    'Loja 7',
    'Loja 8',
  ];

  // Imagens dos ícones de categorias de comida (scroll horizontal)
  final List<String> categoria = [
    'assets/images/lanches.jpeg',
    'assets/images/pizza.jpeg',
    'assets/images/japonesa.jpeg',
    'assets/images/promocoes.jpeg',
    'assets/images/acai.jpeg',
    'assets/images/brasileiras.jpeg',
    'assets/images/doces.jpeg',
    'assets/images/saladas.jpeg',
  ];

  // Nomes das categorias de comida
  final List<String> nomeCategoria = [
    'Lanches',
    'Pizza',
    'Japonesa',
    'Promoções',
    'Açai',
    'Brasileira',
    'Doces & Bolo',
    'Saudavel',
  ];

  // Nomes das farmácias
  final List<String> nomeFarmacia = [
    'Farmacia 1',
    'Farmacia 2',
    'Farmacia 3',
    'Farmacia 4',
    'Farmacia 5',
    'Farmacia 6',
    'Farmacia 7',
    'Farmacia 8',
  ];

  // Imagens das farmácias
  final List<String> farmacia = [
    'assets/images/farm1.jpeg',
    'assets/images/farm2.jpeg',
    'assets/images/farm3.jpeg',
    'assets/images/farm1.jpeg',
    'assets/images/farm2.jpeg',
    'assets/images/farm3.jpeg',
    'assets/images/farm1.jpeg',
    'assets/images/farm2.jpeg',
  ];

  // Tempo de entrega de cada farmácia
  final List<String> tempoFarmacia = [
    '14 min • Gratis',
    '1 hora • Gratis',
    '7 min • Gratis',
    '1:30 hrs • Gratis',
    '15 min • Gratis',
    '22 min • Gratis',
    '2 hrs • Gratis',
    '37 min • Gratis',
  ];

  @override
  Widget build(BuildContext context) {
    // Estrutura/"esqueleto da página"
    return Scaffold(
      backgroundColor: Colors.white,
      // 1ª SESSÃO - Barra superior com nome, endereço e ícones
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              //Dá as boas vindas para o usuário
              "Bom dia, User",
              style: TextStyle(fontSize: 14, color: Colors.black45),
            ),
            Row(
              children: [
                Text(
                  // Endereço atual do usuário
                  "Av. Brasil, 99",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                // Seta para baixo para trocar o endereço
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
          ],
        ),
        actions: [
          Builder(
            // Botão de diamante (abre drawer lateral)
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              // Botão de notificações (abre drawer lateral)
              icon: Icon(Icons.diamond_rounded, color: Colors.purple.shade300),
            ),
          ),
          Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              icon: Icon(Icons.notifications_none),
            ),
          ),
        ],
      ),

      // Body da pagina principal com scroll vertical - 
      //2ª SESSÃO - GRID COM 10 FOTOS 
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
                // Grid de ícones de categorias (Wrap distribui automaticamente)
              Padding(
                padding: EdgeInsets.all(1),
                child: Center(
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 25, // espaço horizontal entre itens
                    runSpacing: 25, // espaço vertical entre linhas
                    children: List.generate(
                      imagens.length,
                      (index) => Column(
                        children: [
                          // Ícone da categoria
                          Image.asset(imagens[index], width: 40, height: 40),
                          SizedBox(height: 8),
                          Text(
                            // Nome da categoria
                            titulos[index],
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15),

              //3ª SESSÃO: Cabeçalho da seção "TAXA NA FAIXA"
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Taxa na faixa",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // Botão "Ver mais" em vermelho
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Ver mais",
                            style: TextStyle(color: Colors.red.shade400),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(
                      "A taxa é cortesia pra você",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
              ),


              // 4ª SESSÃO: Scroll horizontal com fotos circulares das lojas
              Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 5,
                    children: List.generate(
                      loja.length,
                      (index) => Column(
                        children: [
                          // Foto circular da loja
                          Container(
                            width: 100,
                            height: 70,
                            margin: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(loja[index]),
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                          // Nome da loja abaixo da foto
                          Text(
                            nomeLoja[index],
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),

              // 5ª SESSÃO - Carrossel de banners de cupom (PageView deslizável)
              SizedBox(
                height: 150,
                child: PageView.builder(
                  itemCount: cupons.length,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset(cupons[index], fit: BoxFit.cover),
                  ),
                ),
              ),

              SizedBox(height: 20),

              // 6ª SESSÃO - Scroll horizontal com banners de promoções
              Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    spacing: 5,

                    children: List.generate(
                      promocoes.length,
                      (index) => Container(
                        width: 100,
                        height: 120,
                        margin: EdgeInsets.symmetric(vertical: 8),

                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(promocoes[index]),
                          ),

                          // Bordas arredondadas nos banners
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30),

              // 7ª SESSÃO - Scroll horizontal com categorias de comida (ícones circulares)
              SizedBox(
                height: 90,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    spacing: 25,
                    children: List.generate(
                      categoria.length,
                      (index) => Column(
                        children: [
                          // Ícone circular da categoria
                          Container(
                            width: 40,
                            height: 40,

                            margin: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(categoria[index]),
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),

                          SizedBox(height: 8),
                          // Nome da categoria
                          Text(
                            nomeCategoria[index],
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // 8ª Cabeçalho da seção de farmácias
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Farmácias famosas",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Ver mais",
                            style: TextStyle(color: Colors.red.shade400),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Peça com Cupom e Entrega gratis",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
              ),


              // 9ª SESSÃO - Grid horizontal com LINHA DUPLA de farmácias
              SizedBox(
                height: 250,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,

                  padding: EdgeInsets.symmetric(horizontal: 10),

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 2 linhas
                    mainAxisSpacing: 100, // espaço entre colunas
                    crossAxisSpacing: 3, // Espaço entre linhas
                    childAspectRatio: 0.7, // Proporçãop largura e altura
                  ),
                  itemCount: farmacia.length,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisSize: MainAxisSize.min,

                      children: [
                        // Foto da farmácia com bordas arredondadas
                        Expanded(
                          child: ClipRRect(
                            //Corta imagem para deixar com canto arredondado
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              farmacia[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        SizedBox(width: 4),
                        // Nome e tempo de entrega da farmácia
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              nomeFarmacia[index],
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              overflow: TextOverflow
                                  .ellipsis, //Adiciona '...' em textos muito grandes
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              tempoFarmacia[index],
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),


              // 10ª SESSÃO - Barra de filtros horizontal (Ordenar)
              SizedBox(
                height: 50,
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 10,
                    children: [
                      // Botão de ordenação
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              "Ordenar",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Icon(Icons.keyboard_arrow_down_sharp),
                          ],
                        ),
                      ),

                      SizedBox(width: 8),

                      // Filtro: entrega grátis
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              "Entrega grátis",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8),

                      // Filtro: vale-refeição
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              "Vale-Refeição",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Icon(Icons.keyboard_arrow_down_sharp),
                          ],
                        ),
                      ),
                      SizedBox(width: 8),

                      // Filtro: distância
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              "Distância",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Icon(Icons.keyboard_arrow_down_sharp),
                          ],
                        ),
                      ),
                      SizedBox(width: 8),

                      // Filtro: gourmet com ícone verificado                      
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              "Entrega Rastreável",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.verified),
                            Text(
                              "Gourmet",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              "Aberto agora",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              "Promoção",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              "Perto de mim",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              "Preço",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Icon(Icons.keyboard_arrow_down_sharp),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 8),

              // Título da seção de lojas              
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Lojas",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Lista vertical de lojas 
              ListView.builder(
                shrinkWrap: true, // ocupa só o espaço necessário dentro do Column
                physics: NeverScrollableScrollPhysics(), // desativa scroll próprio
                itemCount: loja.length,
                itemBuilder: (_, i) => Container(
                  // '_' é o context que n foi usado
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200),
                    // Borda ao redor do card da loja
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      // Foto da loja com bordas arredondadas
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          loja[i],
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 12),

                      // Nome e tempo de entrega da loja
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            nomeLoja[i],
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            tempoLoja[i],
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Colors.black45,
                            ),
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
      ),



      // Barra de navegação inferior com 4 abas
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Busca'),
          BottomNavigationBarItem(icon: Icon(Icons.receipt), label: 'Pedidos'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),


      // Botão flutuante que navega para a tela Checkin (sacola)
      //bottomSheet: Container(height: 40, child: Text("Rodapé")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Checkin()),
          );
        },
        // Ícone de estrela vermelha
        child: Icon(Icons.auto_awesome_sharp, color: Colors.red),
      ),
    );
  }
}
