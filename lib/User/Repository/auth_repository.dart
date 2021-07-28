import 'package:firebase_auth/firebase_auth.dart';
import 'auth_firebase.dart';

class AuthRepository {
  final _authFirebase = AuthFirebase();

  //llamo al metodo signIn de la clase AuthFirebase
  Future<UserCredential> signInFirebase() => _authFirebase.singIn();
}
