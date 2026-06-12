import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imagens = [
    'images/hamburguerIcon.png',
    'images/mercados.jpeg',
    'images/farmacias.jpeg',
    'images/bebidas.jpeg',
    'images/viagens.jpeg',
    'images/corridas.jpeg',
    'images/promocoes.jpeg',
    'images/gourmet.jpeg',
    'images/missoes.jpeg',
    'images/vermais.jpeg',
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
    'images/cupom.jpeg',
    'images/cupom2.jpeg',
    'images/cupom3.jpeg',
    'images/cupom4.jpeg',
    'images/cupom5.jpeg'
  ];

  final List<String> promocoes = [
    'images/oferta.jpeg',
    'images/oferta2.jpeg',
    'images/oferta3.jpeg',
    'images/oferta4.jpeg'
  ];

  final List<String> loja = [
    'images/loja1.jpeg',
    'images/loja2.jpeg',
    'images/loja3.jpeg',
    'images/loja1.jpeg',
    'images/loja2.jpeg',
    'images/loja3.jpeg',
    'images/loja1.jpeg',
    'images/loja2.jpeg',
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
    'images/lanches.jpeg',
    'images/pizza.jpeg',
    'images/japonesa.jpeg',
    'images/promocoes.jpeg',
    'images/acai.jpeg',
    'images/brasileiras.jpeg',
    'images/doces.jpeg',
    'images/saladas.jpeg'
  ];
  final List<String> nomeCategoria = [
    'Lanches',
    'Pizza',
    'Japonesa',
    'Promoções',
    'Açai',
    'Brasileira',
    'Doces & Bolo',
    'Saudavel'
  ];

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

  final List<String> farmacia = [
    'images/farm1.jpeg',
    'images/farm2.jpeg',
    'images/farm3.jpeg',
    'images/farm1.jpeg',
    'images/farm2.jpeg',
    'images/farm3.jpeg',
    'images/farm1.jpeg',
    'images/farm2.jpeg',
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
                Expanded(
                  child: Text(
                    "Av. Brasil, 99",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
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
                    spacing: 5,
                    children: List.generate(
                      loja.length,
                      (index) => Container(
                        width: 100,
                        height: 120,
                        margin: EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(loja[index]),
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
              SizedBox(
                height: 90,
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

              SizedBox(
                height: 220,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 2 linhas
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: farmacia.length,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              farmacia[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          nomeFarmacia[index],
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),

              SizedBox(
                height: 50,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 10,
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text("Ordenar")),

                      SizedBox(width: 8),

                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Entrega grátis"),
                      ),
                      SizedBox(width: 8),

                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Vale-refeição"),
                      ),
                      SizedBox(width: 8),

                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Distância"),
                      ),

                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Entrega Rastreavel"),
                      ),

                      ElevatedButton(onPressed: () {}, child: Text("Gourmet")),

                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Abertos Agora"),
                      ),

                      ElevatedButton(onPressed: () {}, child: Text("Promoção")),

                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Perto de mim"),
                      ),

                      ElevatedButton(onPressed: () {}, child: Text("Preço")),
                    ],
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

              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: loja.length,
                itemBuilder: (_, i) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          imagens[i],
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 12),
                      Text(
                        nomeLoja[i],
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
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
