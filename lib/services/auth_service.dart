import 'package:catch_card/modals/user.dart';
import 'package:firebase_auth/firebase_auth.dart';


class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Create user object from Firebase object
  User _userFromFirebase(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  // Auth change user stream
  Stream<User> get user {
    return _auth.onAuthStateChanged
        .map(_userFromFirebase);
  }

  // Sign-in Google


  // Sign-in Anon
  Future signinAnon() async{
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebase(user);
    }
    catch(e) {
      print(e.toString());
      return null;
    }

  }


  // Sign-out
  Future signOut() async {
    try {
      return await _auth.signOut();
    }
    catch(e) {
      print('signout eror');
      print(e.toString());
      return null;
    }
  }

}