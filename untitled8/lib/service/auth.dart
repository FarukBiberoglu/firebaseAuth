import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => firebaseAuth.currentUser;
  Stream<User?> get authChanges => firebaseAuth.authStateChanges();

  Future<void> createUser({required String email, required String password}) async {
    try {
      UserCredential userCredential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      await userCredential.user?.sendEmailVerification();

    } on FirebaseAuthException catch (e) {
      throw e;
    }
  }

  Future<void> signIn({required String email, required String password}) async {
    await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
  }

  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }
}
