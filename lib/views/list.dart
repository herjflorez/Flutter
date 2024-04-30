import 'package:actividad_4_flutter/main.dart';
import 'package:actividad_4_flutter/views/compras.dart';
import 'package:actividad_4_flutter/views/ciudades.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_local.dart';


class ListPage extends StatefulWidget{

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

      int idVista = 2;

      void cambiarVista(int number){
        setState(() {
          idVista = number;
        });
       }

      Color selected1 = Colors.transparent;
      Color selected2 = Colors.transparent;

      var vista;
  

  @override
  Widget build(BuildContext context) {

    final contentView = AppLocalizations.of(context)!;

    if(idVista == 1){
      vista = const Ciudades();
      selected1 = Theme.of(context).primaryColor;
      selected2 = Colors.transparent;
    } else{
      vista = const Compras();
      selected1 = Colors.transparent;
      selected2 = Theme.of(context).primaryColor;
    }
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(contentView.tittle),
        actions: languageSelector(context),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 100,
              child: const Center(child: Text("Menu", style: TextStyle(fontSize: 30),)),
            ),
            Container(
              color: selected1,
              child: ListTile(
                title: Text(contentView.cities),
                onTap: () => cambiarVista(1),
              ),
            ),
            Container(
              color: selected2,
              child: ListTile(
                title: Text(contentView.shopings),
                onTap: () => cambiarVista(2),
              ),
            )
          ]
        ),
      ),
      body: vista
    );
  }
}




