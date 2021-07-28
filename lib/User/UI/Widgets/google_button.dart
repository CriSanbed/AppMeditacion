import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

//CREANDO LA CLASE
class GoogleButton extends StatefulWidget{
  //declaro parametros para el alto y ancho del boton para la clase _GoogleButton
  double widthC = 0;
  double heightC = 0;
  late final String textC;

  // que pasa cuando se tapee, lo resuelve el constructor
  late final VoidCallback onPressed;

  GoogleButton({
    Key? key,
    required this.textC,
    required this.widthC,
    required this.heightC,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _GoogleButton();
  }

}

//CLASE ANIDADA
class _GoogleButton extends State<GoogleButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
          margin: const EdgeInsets.only(top: 35),
          width: widget.widthC,
          height: widget.heightC,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              gradient: const LinearGradient(
                  colors: [Color(0xFFFA0303), Color(0xfffd039e)],
                  begin: FractionalOffset(0.2, 0.0),
                  end: FractionalOffset(1.0, 0.6),
                  stops: [0.0, 0.7])),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              widget.textC,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )

      ),
    );
  }
}