import 'package:actividad_4_flutter/globals.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_local.dart';


class Compras extends StatelessWidget{
  const Compras({
    super.key,
  });

  @override
  Widget build(BuildContext context){

    final contentView = AppLocalizations.of(context)!;

  print(viajes.first.fecha);
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: viajes.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Hero(
                        tag: viajes[index].tag,
                        child: Text(viajes[index].destino)
                      ),
                      subtitle: Text("${contentView.price}: ${NumberFormat.currency().format(viajes[index].precio)}   |   ${contentView.departure}: ${DateFormat.jm().format(viajes[index].fecha)}, ${DateFormat.MMMEd().format(viajes[index].fecha)}"),
                      // onTap: () => Navigator.pushNamed(context, Routes.detail, arguments: list[index]),
                    ), 
                  );
                },
              )
            ),
          ],
        ),
      ),
    );
  }
}