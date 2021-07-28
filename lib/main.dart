import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:app_logueo_meditacion/User/BLOC/bloc_user.dart';
import 'package:app_logueo_meditacion/User/UI/Screen/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:app_logueo_meditacion/User/UI/Screen/relax.dart';

Future<void> main() async {
  //usando firebase_core
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        child: MaterialApp(
          title: 'Welcome',
          home: Welcome(), //pantalla inicial en la app
          initialRoute: 'main',
          routes: {'main': (context) => Welcome()},
        ),
        bloc: UserBloc());
  }
}

