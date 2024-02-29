import 'package:flutter/material.dart';

void main() => runApp(const AppMiTabBar());

class AppMiTabBar extends StatelessWidget {
  const AppMiTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo TabBar Martin Cobos",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MiPaginaInicial(),
    );
  }
} //fin de AppMiTabBar

//stateful
class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
} //MiPaginaInicial

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar Martin Cobos"),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(
              text: "ResidentEvil",
              icon: Icon(Icons.policy),
            ),
            Tab(
              text: "Street Fighters",
              icon: Icon(Icons.streetview),
            ),
            Tab(
              text: "AceAttorney",
              icon: Icon(Icons.account_balance_rounded),
            ),
            Tab(
              text: "Megaman",
              icon: Icon(Icons.engineering),
            )
          ] //fin de tabs
              ), //fin bottom tabBar
        ),
        body: TabBarView(
          children: const <Widget>[
            Center(
              child: Text(
                "Resident evil 2 Remake",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
            ),
            Center(
              child: Text(
                "Street Fighters 6",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
            ),
            Center(
              child: Text(
                "Ace attorney trilogy",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
            ),
            Center(
              child: Text(
                "Mega Man 11",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
            ),
          ], //jardin de niños
        ), //fin de TabBarView
      ),
    ); //fin de scaffold
  } //fin widget
} //_MiPaginaInicialState
