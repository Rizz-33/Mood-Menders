import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  // Instances of auth and firestore
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Sign in with email and password
  Future<UserCredential> signInWithEmailPassword(String email, String password, String username) async {
    try {
      // Sign in user
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: email, password: password);

      // Check if the username is already saved in Firestore
      DocumentSnapshot userDoc = await _firestore.collection("users").doc(userCredential.user!.uid).get();
      if (!userDoc.exists) {
        // Save the username to Firestore
        await _firestore.collection("users").doc(userCredential.user!.uid).set({
          'username': username,
        });
      }

      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  // Sign up with email and password
  Future<UserCredential> signUpWithEmailAndPassword(String email, String password, String username) async {
    try {
      // Create user
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);

      // Save user details to Firestore
      await _firestore.collection("users").doc(userCredential.user!.uid).set({
        'username': username,
        'email': email,
      });

      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  // Sign out
  Future<void> signOut() async {
    return await _auth.signOut();
  }

  // Get current user
  User? getCurrentUser() {
    return _auth.currentUser;
  }

  saveUsernameToFirestore(String username) {}
}
