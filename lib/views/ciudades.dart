import 'package:actividad_4_flutter/globals.dart';
import 'package:actividad_4_flutter/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_local.dart';


class Ciudades extends StatelessWidget {
  const Ciudades({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final contentView = AppLocalizations.of(context)!;

    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: ciudades.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Hero(
                        tag: ciudades[index].tag,
                        child: CircleAvatar(backgroundImage: AssetImage(ciudades[index].image), )
                      ),
                      title: Text(ciudades[index].name),
                      subtitle: Text("${contentView.country}: ${ciudades[index].country}"),
                      onTap: () => Navigator.pushNamed(context, Routes.detail, arguments: ciudades[index]),
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