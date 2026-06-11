import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imagens = [
    'images/hamburguerIcon.png',
    'images/hamburguerIcon.png',
    'images/hamburguerIcon.png',
    'images/hamburguerIcon.png',
    'images/hamburguerIcon.png',
    'images/hamburguerIcon.png',
    'images/hamburguerIcon.png',
    'images/hamburguerIcon.png',
    'images/hamburguerIcon.png',
    'images/hamburguerIcon.png',
  ];

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

  final List<String> cupons = [
    'images/ofertaPadrao.png',
    'images/ofertaPadrao.png',
    'images/ofertaPadrao.png',
    'images/ofertaPadrao.png',
  ];

  final List<String> promocoes = [
    'images/hamburguerIcon.png',
    'images/hamburguerIcon.png',
    'images/hamburguerIcon.png',
    'images/hamburguerIcon.png',
  ];

  final List<String> loja = [
    'images/hamburguerIcon.png',
    'images/hamburguerIcon.png',
    'images/hamburguerIcon.png',
    'images/hamburguerIcon.png',
    'images/hamburguerIcon.png',
    'images/hamburguerIcon.png',
    'images/hamburguerIcon.png',
    'images/hamburguerIcon.png',
  ];

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


final List<String> categoria = [
  'images/hamburguerIcon.png',
  'images/hamburguerIcon.png',
  'images/hamburguerIcon.png',
  'images/hamburguerIcon.png',
  'images/hamburguerIcon.png',
  'images/hamburguerIcon.png',
  'images/hamburguerIcon.png',
  'images/hamburguerIcon.png',
  'images/hamburguerIcon.png',
  'images/hamburguerIcon.png',
  'images/hamburguerIcon.png',
  'images/hamburguerIcon.png',
  'images/hamburguerIcon.png',
  'images/hamburguerIcon.png',
  'images/hamburguerIcon.png'
];
  final List<String> nomeCategoria = [
    'Lanches',
    'Pizza',
    'Açai',
    'Promoções',
    'Brasileira',
    'Japonesa',
    'Doces & Bolo',
    'Pastel',
    'Sorvetes',
    'Marmita',
    'Salgados',
    'Padaria',
    'Saudavel',
    'Carnes',
    'Italiana'
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bom dia, User",
              style: TextStyle(fontSize: 14, color: Colors.black45),
            ),
            Row(
              children: [
                Text(
                  "Av. Brasil, 99",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Icon(Icons.keyboard_arrow_down),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
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

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(1),
                child: Center(
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 25,
                    runSpacing: 25,
                    children: List.generate(
                      imagens.length,
                      (index) => Column(
                        children: [
                          Image.asset(imagens[index], width: 40, height: 40),
                          SizedBox(height: 8),
                          Text(
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
              Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      imagens.length,
                      (index) => Container(
                        width: 100,
                        height: 120,
                        margin: EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(imagens[index]),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
                child: PageView.builder(
                  itemCount: cupons.length,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset(cupons[index], fit: BoxFit.cover),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
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
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 90,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 25,
                    children: List.generate(
                      categoria.length,
                      (index) => Column(
                        children: [
                          Image.asset(categoria[index], width: 40, height: 40),
                          SizedBox(height: 8),
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


              



            ],
          ),
        ),

        
      ),

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
      //bottomSheet: Container(height: 40, child: Text("Rodapé")),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
