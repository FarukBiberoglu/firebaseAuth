import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled8/service/auth.dart';

class Loginregisterpage extends StatefulWidget {
  const Loginregisterpage({super.key});

  @override
  State<Loginregisterpage> createState() => _LoginregisterpageState();
}
class _LoginregisterpageState extends State<Loginregisterpage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isLogin = true;
  String? errorMessage = '';
  String? successMessage = '';

  Future<void> createUser() async {
    try {
      await Auth().createUser(
        email: emailController.text,
        password: passwordController.text,
      );
      setState(() {
        successMessage = 'Doğrulama e-postası gönderildi. Lütfen e-postanızı kontrol edin.';
      });
    } on FirebaseException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Future<void> signIn() async {
    try {
      await Auth().signIn(
        email: emailController.text,
        password: passwordController.text,
      );
    } on FirebaseException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FİREBASE AUTH'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            errorMessage != null
                ? Text(errorMessage!, style: TextStyle(color: Colors.red))
                : SizedBox.shrink(),
            successMessage != null
                ? Text(successMessage!, style: TextStyle(color: Colors.green))
                : SizedBox.shrink(),
            ElevatedButton(
              onPressed: () {
                if (isLogin) {
                  signIn();
                } else {
                  createUser();
                }
              },
              child: isLogin ? Text('Login') : Text('Register'),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isLogin = !isLogin;
                });
              },
              child: Text('Henüz Hesabın Yok mu? Tıkla!'),
            ),
          ],
        ),
      ),
    );
  }
}
