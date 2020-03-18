import 'package:firebase_auth/firebase_auth.dart';
import 'package:tara_app/models/user.dart';

class AuthService {

 static final FirebaseAuth _auth = FirebaseAuth.instance;

//create user obj based on FirebaseUser
User _userFromFirebaseUser(FirebaseUser user) {

  return user != null ? User(uid: user.uid) :null;
}
//auth change user stream
Stream<User> get user {
    return _auth.onAuthStateChanged
      //.map((FirebaseUser user) => _userFromFirebaseUser(user));
      .map(_userFromFirebaseUser);
  }
//sign in anonymously
Future signInAnon() async {
try {
AuthResult result = await _auth.signInAnonymously();
FirebaseUser user = result.user;
return _userFromFirebaseUser(user);
}catch(e) {
print(e.toString());
return null;
}
}

static void login(String email, String password) async{
  try {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
  } catch(e) {
    print(e);
  }
}
}

//sign in with email and password


//register with email and password


//sign out 

