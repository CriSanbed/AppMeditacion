import 'package:flutter/material.dart';

class IconosPie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


      return Container(
        margin: const EdgeInsets.only(top: 5.0),
        height: 250.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            //ICONO DE DESCARGA
            IconButton(
              icon: const Icon(Icons.assignment_returned),
              color: Colors.black54,
              iconSize: 35.0,
              onPressed: () {},
            ),
            //ICONO DE ME GUSTA
            IconButton(
              icon: const Icon(Icons.emoji_emotions),
              color: Colors.black54,
              iconSize: 35.0,
              onPressed: () {},
            ),
            //ICONO DE COMENTARIO
            IconButton(
              icon: const Icon(Icons.where_to_vote_outlined),
              color: Colors.black54,
              iconSize: 35.0,
              onPressed: () {},
            ),
          ],
        ),
      );

  }
  //const IconosPie({Key? key}) : super(key: key);



}