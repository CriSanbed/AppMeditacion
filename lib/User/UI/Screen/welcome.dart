import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:app_logueo_meditacion/User/BLOC/bloc_user.dart';
import 'package:app_logueo_meditacion/User/UI/Screen/relax.dart';
import 'package:app_logueo_meditacion/User/UI/Widgets/google_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

//CREANDO LA CLASE PRINCIPAL
class Welcome extends StatelessWidget {
  //definiendo blocUser de la clase UserBloc
  late UserBloc blocUser;

  @override
  Widget build(BuildContext context) {
    blocUser = BlocProvider.of(context);
    //retornando el widget de control session
    return _controlSession();
  }

  Widget _controlSession() {
    return StreamBuilder(
        stream: blocUser.authStatus,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData || snapshot.hasError) {
            return welcomeApp();
          } else {
            return Relax();
          }
        });
  }

  //WIDGET PRINCIPAL
  Widget welcomeApp() {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        //CONTAINER PARA TITULO
        Container(
          height: 80.0,
          margin: const EdgeInsets.only(top: 75.0),
          child: const Text(
            '''Welcome To, \nMeditation Care''',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),

        //CONTAINER PARA LA IMAGEN
        Container(
          height: 350,
          width: 350,
          margin: const EdgeInsets.only(top: 25.0),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.scaleDown,
                  image: AssetImage("assets/img/meditacion1.jpg")),
              //borderRadius: BorderRadius.all(Radius.circular(90.0)),
              shape: BoxShape.circle),
        ),

        //CONTAINER PARA EL PARRAFO
        Container(
          margin: const EdgeInsets.only(top: 50.0),
          child: const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 26),
          ),
        ),

        //CONTAINER PARA EL BOTON DE GOOGLE
        Container(
            margin: const EdgeInsets.only(top: 70.0),
            child: Center(
                child: GoogleButton(
                    textC: 'Get Started',
                    widthC: 300.0,
                    heightC: 60.0,
                    onPressed: () {
                      blocUser.signIn().then((UserCredential user) =>
                          print("Se ha logueado como: ${user.user}"));
                    })))
      ],
    ));
  }
}
