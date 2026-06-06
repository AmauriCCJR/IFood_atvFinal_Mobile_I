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


 final List<String> ofertas  = [
    'images/ofertaPadrao.png',
    'images/ofertaPadrao.png',
    'images/ofertaPadrao.png',
    'images/ofertaPadrao.png'
  ];

  final List<String> loja = [
    'images/hamburguerIcon.png',
    'images/hamburguerIcon.png',
    'images/hamburguerIcon.png',
    'images/hamburguerIcon.png',
    'images/hamburguerIcon.png',
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
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
            Row(
              children: [
                Text(
                  "Av. Brasil, 99",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                //ElevatedButton(onPressed: (){}, child: Icon(Icons.keyboard_arrow_down))
                Icon(Icons.keyboard_arrow_down),
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
          padding: EdgeInsetsGeometry.symmetric(vertical: 30),
          child: Column(
            children: [
              Center(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 20,
                  runSpacing: 20,
                  children: List.generate(imagens.length, (index) {
                    return InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(16),
                      child: SizedBox(
                        width: 70,
                        child: Column(
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Image.asset(
                                  imagens[index],
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),

                            SizedBox(height: 6),

                            Text(
                              titulos[index],
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
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
              Padding(padding: EdgeInsetsGeometry.all(10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(loja.length, (index) => Container(
                      width: 60, height: 60,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        shape: BoxShape.circle
                      ),
                    ))
                  
                ),),
              ),



             ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 400),
              child: CarouselView.builder(
               
                itemExtent: 400,
                itemCount: ofertas.length,
                itemBuilder: (context, index) => Image.asset(ofertas[index]),
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
