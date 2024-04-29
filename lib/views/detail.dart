import 'package:actividad_4_flutter/globals.dart';
import 'package:actividad_4_flutter/models/city.dart';
import 'package:actividad_4_flutter/routes/routes.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget{

  final City city;
  Detail({required this.city});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Detail"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 600),
            margin: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                const SizedBox(height: 40),
                Hero(
                  tag: city.tag,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(city.image),
                    radius: 150,
                  )
                ),
                const SizedBox(height: 40),
                Title(
                  color: Colors.black,
                  child: Text(
                    city.name,
                    style: const TextStyle(fontSize: 50),
                    )
                ),
                Text(
                  city.info,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: ( BuildContext context) {
                          return AlertDialog(
                            title: Center(child: Title(color: Colors.red, child: const Text("Aviso"))),
                            content: const Text("¿Esta seguro que desea eliminar la ciudad?", textAlign: TextAlign.center, ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text("Cancelar")
                              ),
                              TextButton(
                                onPressed: () => {
                                  ciudades.remove(city),
                                  Navigator.pushReplacementNamed(context, Routes.list)
                                },
                                child: const Text("Aceptar")
                              )
                            ],
                            actionsAlignment: MainAxisAlignment.center ,
                          );
                        },
                    );},
                  child: const Text("Eliminar")
                ),
                const SizedBox(height: 30)
              ],
            ),
          ),
        ),
      ),
    );
  }

}