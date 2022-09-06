import 'package:astroapp/pages/conteudos_astronautica/angulos_de_euler.dart';
import 'package:astroapp/pages/conteudos_astronautica/aplicacoes_da_astronautica.dart';
import 'package:astroapp/pages/conteudos_astronautica/introducao_astronautica.dart';
import '../data/bd.dart';
import '../domain/menu.dart';
import 'package:flutter/material.dart';


class Menu_Astronautica extends StatefulWidget {
  final List menu;

  const Menu_Astronautica({
    Key? key,
    required this.menu,
    }) : super(key: key);

  @override
  Menu_AstronauticaState createState() => Menu_AstronauticaState();
}

class Menu_AstronauticaState extends State<Menu_Astronautica> {
  Future<List<Menu>> listaNoticias = BD.getCardMenu();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          'AstroApp',
          style: TextStyle(fontSize: 24),
        ),
      ),


      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      

                      children: [
                        Center(
                            child: Text(
                          "Astronáutica",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                        Container(
                          margin: const EdgeInsets.only(bottom: 75.0),
                        ),


                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                          ),
                          child: Text(
                            widget.menu[0].titulo,
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.yellow,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Introducao_Astronautica()),
                              );
                          },
                        ),


                        const SizedBox(height: 0),
                        Container(
                          margin: const EdgeInsets.only(bottom: 75.0),
                           decoration: BoxDecoration(
                            border: Border.all(
                              width: 7,
                          ),
                          ),
                          child: InkWell(
                          child: Image.network(widget.menu[0].imagem),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Introducao_Astronautica()),
                              );
                          },
                          ),
                        ),


                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                          ),
                          child: Text(
                            widget.menu[1].titulo,
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.yellow,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Angulos_De_Euler()),
                              );
                          },
                        ),


                        const SizedBox(height: 0),
                        Container(
                          margin: const EdgeInsets.only(bottom: 75.0),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 7,
                          ),
                          ),
                          child: InkWell(
                          child: Image.network(widget.menu[1].imagem, height: 400
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Angulos_De_Euler()),
                              );
                          },
                          ),
                        ),


                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                          ),
                          child: Text(
                            widget.menu[2].titulo,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.yellow,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Aplicacoes_Da_Astronautica()),
                              );
                          },
                        ),


                        const SizedBox(height: 0),
                        Container(
                          margin: const EdgeInsets.only(bottom: 75.0),
                           decoration: BoxDecoration(
                            border: Border.all(
                              width: 7,
                          ),
                          ),
                          child: InkWell(
                          child: Image.network(widget.menu[2].imagem),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Aplicacoes_Da_Astronautica()),
                              );
                          },
                          ),
                        ),

                        


                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
