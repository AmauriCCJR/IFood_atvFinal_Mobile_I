import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // ── dados ──────────────────────────────────────────────────────────────────
  static const _categorias = [
    ('images/hamburguerIcon.png', 'Restaurantes'),
    ('images/hamburguerIcon.png', 'Mercados'),
    ('images/hamburguerIcon.png', 'Farmácias'),
    ('images/hamburguerIcon.png', 'Bebidas'),
    ('images/hamburguerIcon.png', 'Viagens'),
    ('images/hamburguerIcon.png', 'Corridas'),
    ('images/hamburguerIcon.png', 'Promoções'),
    ('images/hamburguerIcon.png', 'Gourmet'),
    ('images/hamburguerIcon.png', 'Moedas'),
    ('images/hamburguerIcon.png', 'Ver Mais'),
  ];

  static const _lojas = [
    ('images/hamburguerIcon.png', 'Loja 1'),
    ('images/hamburguerIcon.png', 'Loja 2'),
    ('images/hamburguerIcon.png', 'Loja 3'),
    ('images/hamburguerIcon.png', 'Loja 4'),
    ('images/hamburguerIcon.png', 'Loja 5'),
    ('images/hamburguerIcon.png', 'Loja 6'),
    ('images/hamburguerIcon.png', 'Loja 7'),
    ('images/hamburguerIcon.png', 'Loja 8'),
  ];

  static const _ofertas = [
    'images/ofertaPadrao.png',
    'images/ofertaPadrao.png',
    'images/ofertaPadrao.png',
    'images/ofertaPadrao.png',
  ];

  // ── build ──────────────────────────────────────────────────────────────────
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _CategoriaGrid(itens: _categorias),
            _SecaoHeader(titulo: 'Taxa na faixa', subtitulo: 'A taxa é cortesia pra você'),
            _LojaGrid(itens: _lojas),
            const SizedBox(height: 16),
            _Carrossel(imagens: _ofertas),
            const SizedBox(height: 24),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  // ── appbar ─────────────────────────────────────────────────────────────────
  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Bom dia, User',
              style: TextStyle(fontSize: 13, color: Colors.black45)),
          Row(
            children: [
              const Text('Av. Brasil, 99',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              const Icon(Icons.keyboard_arrow_down, size: 20),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.diamond_rounded, color: Colors.purple.shade300),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_none),
        ),
      ],
    );
  }

  // ── bottom nav ─────────────────────────────────────────────────────────────
  BottomNavigationBar _buildBottomNav() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black54,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Inicio'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Busca'),
        BottomNavigationBarItem(icon: Icon(Icons.receipt), label: 'Pedidos'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
      ],
    );
  }
}

// ── widgets internos ──────────────────────────────────────────────────────────

/// Grid de categorias (Restaurantes, Mercados…)
class _CategoriaGrid extends StatelessWidget {
  const _CategoriaGrid({required this.itens});
  final List<(String, String)> itens;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 16,
        runSpacing: 16,
        children: itens.map((item) => _ItemCategoria(imagem: item.$1, titulo: item.$2)).toList(),
      ),
    );
  }
}

class _ItemCategoria extends StatelessWidget {
  const _ItemCategoria({required this.imagem, required this.titulo});
  final String imagem;
  final String titulo;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 56,
      child: Column(
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Image.asset(imagem, fit: BoxFit.contain),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            titulo,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────

/// Cabeçalho de seção com título + botão "Ver mais"
class _SecaoHeader extends StatelessWidget {
  const _SecaoHeader({required this.titulo, required this.subtitulo});
  final String titulo;
  final String subtitulo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 8, 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(titulo,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
              TextButton(
                onPressed: () {},
                child: Text('Ver mais',
                    style: TextStyle(color: Colors.red.shade400)),
              ),
            ],
          ),
          Text(subtitulo,
              style: const TextStyle(color: Colors.grey, fontSize: 13)),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────

/// Lista horizontal de lojas
class _LojaGrid extends StatelessWidget {
  const _LojaGrid({required this.itens});
  final List<(String, String)> itens;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        itemCount: itens.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (_, i) =>
            _ItemLoja(imagem: itens[i].$1, nome: itens[i].$2),
      ),
    );
  }
}

class _ItemLoja extends StatelessWidget {
  const _ItemLoja({required this.imagem, required this.nome});
  final String imagem;
  final String nome;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey.shade200),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Image.asset(imagem, fit: BoxFit.contain),
          ),
        ),
        const SizedBox(height: 4),
        Text(nome,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w500)),
      ],
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────

/// Carrossel de ofertas usando PageView (compatível com Flutter Web)
class _Carrossel extends StatefulWidget {
  const _Carrossel({required this.imagens});
  final List<String> imagens;

  @override
  State<_Carrossel> createState() => _CarrosselState();
}

class _CarrosselState extends State<_Carrossel> {
  final _controller = PageController(viewportFraction: 0.9);
  int _paginaAtual = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 180,
          child: PageView.builder(
            controller: _controller,
            itemCount: widget.imagens.length,
            onPageChanged: (i) => setState(() => _paginaAtual = i),
            itemBuilder: (_, i) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(widget.imagens[i], fit: BoxFit.cover),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        // indicador de pontos
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.imagens.length,
            (i) => AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              margin: const EdgeInsets.symmetric(horizontal: 3),
              width: _paginaAtual == i ? 10 : 6,
              height: 6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: _paginaAtual == i ? Colors.red.shade400 : Colors.grey.shade300,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
