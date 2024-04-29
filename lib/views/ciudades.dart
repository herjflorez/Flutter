import 'package:actividad_4_flutter/globals.dart';
import 'package:actividad_4_flutter/routes/routes.dart';
import 'package:flutter/material.dart';

class Ciudades extends StatelessWidget {
  const Ciudades({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                      subtitle: Text("Pais: ${ciudades[index].country}"),
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