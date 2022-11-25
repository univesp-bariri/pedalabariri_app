import 'package:flutter/material.dart';
import 'package:pedala_bariri/screens/auth_screen.dart';
import 'package:pedala_bariri/screens/tabs_screen.dart';
import 'package:provider/provider.dart';
import '../providers/auth.dart';

class AuthOrHomeScreen extends StatelessWidget {
  const AuthOrHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Auth auth = Provider.of(context);
    return FutureBuilder(
        future: auth.tryAutoLogin(),
    builder: (ctx, snapshot) {
    if (snapshot.connectionState == ConnectionState.waiting) {
      return const Center(child: CircularProgressIndicator());
    } else if (snapshot.error != null) {
        return const Center(child: Text('Ocorreu um erro!'));
    } else {
        return auth.isAuth ? const TabsScreen() : const AuthScreen();
    }
    },
    );
  }
}