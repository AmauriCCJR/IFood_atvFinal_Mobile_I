import 'package:flutter/material.dart';

class checkout extends StatefulWidget {
  const checkout({super.key});

  @override
  State<checkout> createState() => _checkoutState();
}

class _checkoutState extends State<checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Sacola"),
        centerTitle: true,
        actions: [
          Builder(
            builder: (context) => TextButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              child: Text(
                "Limpar",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 90, vertical: 12),
                  child: Text("Entrega",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                  child: Text("Retirada", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500)),
                ),
              ],
            ),
            Stack(
              children: [
                Divider(height: 1, thickness: 1, color: Colors.grey.shade300),
              ],
            ),

            SizedBox(height: 20),
            
            Text("Entregar no endereço", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),

            


          ],
        ),
      ),
    );
  }
}
