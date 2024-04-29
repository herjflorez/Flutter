import 'package:actividad_4_flutter/routes/routes.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget{
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
    ).then((value) => {
      Navigator.pushReplacementNamed(context, Routes.list)
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            child: Column(
              
              children: <Widget>[
                Center(child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Image(image: AssetImage("penguin.png"))
                )),
                Center(
                  child: SizedBox(
                    width: 200,
                    height: 5,
                    child: LinearProgressIndicator(),
                  ),
                ),
                SizedBox(height: 10,),
                Text("Penguin :)")
              ],
            ),
          )
        ],
      ),
    );
  }
}