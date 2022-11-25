import 'package:flutter/material.dart';
import 'package:pedala_bariri/screens/contato_screen.dart';
import 'package:pedala_bariri/screens/tipos_rotas_screen.dart';
import 'package:provider/provider.dart';
import 'mycolors/mycolors.dart';
import 'screens/auth_home_screen.dart';
import 'providers/auth.dart';
import 'utils/app_routes.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Auth(),
        ),
      ],

      child: MaterialApp(
        title: 'PEDALA BARIRI',
        theme: ThemeData(
          primarySwatch: primaryBlack,
          canvasColor: const Color.fromRGBO(255, 255, 245, 1),
        ),
        routes: {
          AppRoutes.authHome: (ctx) => const AuthOrHomeScreen(),
          AppRoutes.rotas: (ctx) => const TiposRotasScreen(),
          AppRoutes.contato: (ctx) => const ContatoScreen(),
        },
        //home: const HomeScreen(),
      ),
    );
    }
  }
