import 'package:flutter/material.dart';
import '../mycolors/mycolors.dart';
import 'clima_screen.dart';
import 'rotas_screen.dart';
import 'home_screen.dart';
import 'dicas_screen.dart';
import 'contato_screen.dart';
import '../components/app_drawer.dart';
import '../providers/vars.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});
  @override
  _TabsScreenState createState() => _TabsScreenState();
}
  class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;
  final List<Map<String,dynamic>> _screens = [
    {'title': 'PEDALA BARIRI', 'screen': const HomeScreen()},
    {'title': 'ROTAS', 'screen': const RotasScreen()},
    {'title': 'DICAS', 'screen': const DicasScreen()},
    {'title': 'CLIMA', 'screen': const MainScreen()},
    {'title': 'CONTATO', 'screen': const ContatoScreen()},
  ];

  _selectScreen(int index){
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedScreenIndex == 0 ? AppBar(
          title: lightHomeTitle,
          centerTitle: true,
          backgroundColor:  primaryBlack,

      ): AppBar(
        centerTitle: true,
        title: Text(_screens[_selectedScreenIndex]['title']),
        backgroundColor:  primaryBlack,
      ),

      drawer: const AppDrawer(),

      body: _screens[_selectedScreenIndex]['screen'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: primaryBlack,
        unselectedItemColor: Colors.white70,
        selectedItemColor: Colors.amber,
        currentIndex: _selectedScreenIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: primaryBlack,
            icon: Icon(Icons.house),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            backgroundColor: primaryBlack,
            icon: Icon(Icons.directions_bike),
            label: 'ROTAS',
          ),
          BottomNavigationBarItem(
            backgroundColor: primaryBlack,
            icon: Icon(Icons.tips_and_updates),
            label: 'DICAS',
          ),
          BottomNavigationBarItem(
            backgroundColor: primaryBlack,
            icon: Icon(Icons.sunny),
            label: 'CLIMA',
          ),
        ],
      ),
    );
    }
  }
