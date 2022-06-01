import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ressourcesrelationnelles/Pages/Auth/AuhenticateScreen.dart';
import 'package:ressourcesrelationnelles/Pages/Home/HomeScreen.dart';
import 'package:ressourcesrelationnelles/models/user.dart';

class Wrapper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<AppUser?>(context);
    if (user == null) {
      return AuthenticateScreen();
    } else {
      return HomeScreen(uId: FirebaseAuth.instance.currentUser!.uid);
    }
  }
}