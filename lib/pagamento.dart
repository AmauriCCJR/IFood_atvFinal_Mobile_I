import 'package:flutter/material.dart';
import 'package:ifood_aplication/checkout.dart';

class Pagamento extends StatefulWidget {
  const Pagamento({super.key});

  @override
  State<Pagamento> createState() => _PagamentoState();
}

class _PagamentoState extends State<Pagamento> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(24),
        child: SizedBox(
          height: 60,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Text(
              "Revisar pedido • R\$ 59,04",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),

              //Barra de navegação -- sim, esqueci do AppBar e nao to com vontade de mudar agr
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => checkout()),
                        );
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                    "SACOLA",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Limpar",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                ],
              ),

              SizedBox(height: 40),

              // Informações da loja, falta colocar a imagem do local
              Row(
                children: [
                  Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 224, 224, 224),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pizzaria e Lanchonete Luna",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Adicionar mais itens",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 40),


              //Aréa de pagamento do app que seria com google play story??
              Text(
                "Pagamento pelo app",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),

              SizedBox(height: 16),

              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 245, 245, 245),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.wallet),
                      SizedBox(width: 16),
                      Text(
                          "Google Pay",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(width: 210),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 40),

              //Area para adicionar cupons
              Row(
                children: [
                  Icon(Icons.confirmation_number_outlined),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cupom",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Digite um código",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Digitar",
                      style: TextStyle(color: Color(0xFFEA1D2C), fontSize: 18),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 40),

              Text(
                "Sua gorjeta faz a diferença",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),

              SizedBox(height: 6),

              Text(
                "Opção disponível apenas para pagamentos no cartão de crédito à vista",
                style: TextStyle(color: Colors.grey, height: 1.4),
              ),

              SizedBox(height: 50),

              //Criando os valores de tudo no pedido, desde os itens, frete e até descontos
              Text(
                "Resumo de valores",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),

              SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total dos itens", style: TextStyle(fontSize: 16)),
                  Row(
                    children: [
                      Text(
                        "R\$ 54,99",
                        style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text("R\$ 52,99", style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 12),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Entrega", style: TextStyle(fontSize: 16)),
                  Text("R\$ 4,99", style: TextStyle(fontSize: 16)),
                ],
              ),

              SizedBox(height: 12),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Taxa de serviço", style: TextStyle(fontSize: 16)),
                  Text("R\$ 1,06", style: TextStyle(fontSize: 16)),
                ],
              ),

              SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "R\$ 59,04",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ],
              ),

              SizedBox(height: 18),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total com desconto do Clube",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "R\$ 49,04",
                    style: TextStyle(fontSize: 16, color: Colors.deepPurple),
                  ),
                ],
              ),

              SizedBox(height: 24),
              //Area de economia, nao sei exatamente para que serve mas tem o app entao coloquei aqui
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Center(
                  child: Text(
                    "Economia de R\$ 2,00",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

             SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
