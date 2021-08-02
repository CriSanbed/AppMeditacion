import 'package:app_logueo_meditacion/User/UI/Widgets/gradiente.dart';
import 'package:app_logueo_meditacion/User/UI/Widgets/iconos_pie.dart';
import 'package:flutter/material.dart';

//CREANDO CLASE PRINCIPAL
class Relax extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          const Gradiente(),
          Column(
            children: [
              //STACK PARA LA FLECHA DE RETROCESO SUPERIOR
              Stack(
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 40),
                      alignment: Alignment.topLeft,
                      child: Ink(
                          decoration: const ShapeDecoration(
                            color: Colors.grey,
                            shape: CircleBorder(),
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.arrow_back),
                            color: const Color(0xF44336FF),
                            iconSize: 35.0,
                            onPressed: () {},
                          ))),
                ],
              ),

              //STACK PARA LA IMAGEN
              Stack(
                children: [
                  Container(
                    height: 350,
                    width: 350,
                    margin: const EdgeInsets.only(top: 5.0),
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/img/meditacion2.jpg")),
                        shape: BoxShape.circle),
                  ),
                ],
              ),

              //STACK PARA LA TARJETA
              Stack(
                children: [
                  Card(
                    margin: const EdgeInsets.only(top: 35.0),
                    elevation: 9,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Column(
                      children: [

                        //CONTAINER PARA EL TITULO
                        Container(
                          height: 40.0,
                          margin: const EdgeInsets.only(top: 40.0),
                          padding: EdgeInsets.all(3),
                          child: const Text(
                            '''Relax Your Mind''',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),

                        //CONTAINER PARA EL SUBTITULO
                        Container(
                          height: 55.0,
                          padding: const EdgeInsets.all(5),
                          child: const Text(
                            '''Day episode''',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 24),
                          ),
                        ),

                        //LLAMO AL WIDGETS que contiene los ICONOS
                        IconosPie(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
