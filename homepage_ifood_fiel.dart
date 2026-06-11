
// Versão mais fiel ao layout do print do iFood.
// Mantém apenas Flutter Material padrão.

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController =
      PageController(viewportFraction: 0.92);

  int paginaAtual = 0;

  final categorias = const [
    ('images/hamburguerIcon.png', 'Restaurantes'),
    ('images/hamburguerIcon.png', 'Mercados'),
    ('images/hamburguerIcon.png', 'Farmácias'),
    ('images/hamburguerIcon.png', 'Bebidas'),
    ('images/hamburguerIcon.png', 'Viagens'),
    ('images/hamburguerIcon.png', 'Corridas'),
    ('images/hamburguerIcon.png', 'Promoções'),
    ('images/hamburguerIcon.png', 'Gourmet'),
    ('images/hamburguerIcon.png', 'Moedas'),
    ('images/hamburguerIcon.png', 'Ver mais'),
  ];

  final lojas = const [
    ('images/hamburguerIcon.png', 'Costelaria da Rota'),
    ('images/hamburguerIcon.png', 'Empório São Roque'),
    ('images/hamburguerIcon.png', 'Pasteleiro'),
    ('images/hamburguerIcon.png', 'Caracol'),
    ('images/hamburguerIcon.png', 'Loja 5'),
  ];

  final banners = const [
    'images/ofertaPadrao.png',
    'images/ofertaPadrao.png',
    'images/ofertaPadrao.png',
    'images/ofertaPadrao.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), label: 'Início'),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), label: 'Busca'),
          BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long), label: 'Pedidos'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Perfil'),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _header(),
              _cupomBanner(),
              _categorias(),
              _tituloSecao(),
              _lojas(),
              const SizedBox(height: 16),
              _carrossel(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Boa tarde, Amauri',
                  style: TextStyle(
                      color: Colors.black54, fontSize: 16),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      'R. das Dálias, 22',
                      style: TextStyle(
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                )
              ],
            ),
          ),
          CircleAvatar(
            backgroundColor: Color(0xffF3E8FF),
            child: Icon(Icons.diamond, color: Colors.purple),
          ),
          const SizedBox(width: 12),
          const CircleAvatar(
            backgroundColor: Color(0xffF5F5F5),
            child: Icon(Icons.notifications_none,
                color: Colors.black),
          ),
        ],
      ),
    );
  }

  Widget _cupomBanner() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: const Color(0xffF3E8FF),
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Center(
        child: Text(
          'Você ganhou 2 meses grátis em cupons!',
          style: TextStyle(
            color: Colors.purple,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Widget _categorias() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: categorias.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          mainAxisSpacing: 18,
          crossAxisSpacing: 12,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (_, index) {
          return Column(
            children: [
              Container(
                width: 58,
                height: 58,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Image.asset(categorias[index].$1),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                categorias[index].$2,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: const TextStyle(fontSize: 11),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _tituloSecao() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Taxa na faixa',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Ver mais'),
              )
            ],
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'A taxa é cortesia pra você',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }

  Widget _lojas() {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        scrollDirection: Axis.horizontal,
        itemCount: lojas.length,
        itemBuilder: (_, index) {
          return SizedBox(
            width: 95,
            child: Column(
              children: [
                Container(
                  width: 74,
                  height: 74,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.grey.shade300),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Image.asset(lojas[index].$1),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  lojas[index].$2,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 11),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _carrossel() {
    return Column(
      children: [
        SizedBox(
          height: 190,
          child: PageView.builder(
            controller: _pageController,
            itemCount: banners.length,
            onPageChanged: (value) {
              setState(() => paginaAtual = value);
            },
            itemBuilder: (_, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 8),
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(18),
                  child: Image.asset(
                    banners[index],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            banners.length,
            (index) => Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 3),
              width: paginaAtual == index ? 14 : 6,
              height: 6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: paginaAtual == index
                    ? Colors.grey.shade700
                    : Colors.grey.shade300,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
