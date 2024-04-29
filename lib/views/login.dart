import 'package:actividad_4_flutter/routes/routes.dart';
import 'package:flutter/material.dart';

final _formkey = GlobalKey<FormState>();

final TextEditingController _usercontroller = TextEditingController();
final TextEditingController _passwordcontroller = TextEditingController();

RegExp regExp = RegExp(r'^(?=.*[0-9])(?=.*[a-zA-Z])([a-zA-Z0-9]+)$');

class Login extends StatelessWidget{
@override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Login page"),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.9,
              child: Center(
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 400),
                  margin: const EdgeInsets.symmetric(horizontal: 40.0),
                   child: Form(
                    key: _formkey,
                     child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network("https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png"),
                        TextFormField(
                          controller: _usercontroller,
                          validator: (value) {
                            if(value!.isEmpty){
                              return "El usuario esta vacio";
                            }
                            if(value!.toLowerCase() != "user"){
                              return "El usuario es incorrecto";
                            }
                          },
                          decoration: const InputDecoration(
                            labelText: "User",
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          validator: (value){
                            if(value!.isEmpty){
                              return "La contraseña esta vacia";
                            }
                            if(value.length < 7){
                              return "La contraseña debe tener almenos 7 caracteres";
                            }
                            if(!regExp.hasMatch(value)){
                              return "La contraseña ha de tener numeros y letras";
                            }
                            if(value != "pass12345"){
                              return "La contraseña es incorrecta";
                            }
                          },
                          obscureText: true,
                          decoration: const InputDecoration(
                            labelText: "Password",
                            border: OutlineInputBorder(),                            
                          ),
                        ),
                        const SizedBox(height: 30),
                        TextButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: ( BuildContext context) {
                                return AlertDialog(
                                  title: Center(child: Title(color: Colors.black, child: const Text("User"))),
                                  content: const Text("Your user name \n"
                                                      "'User' \n"
                                                      "Your password \n"
                                                      "'pass12345' \n", textAlign: TextAlign.center, ),
                                  actions: [
                                    TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: const Text("Aceptar")
                                      )
                                  ],
                                  actionsAlignment: MainAxisAlignment.center ,
                                );
                              },
                            );
                          },
                          child: const Text("Forgot Password"),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            if(_formkey.currentState!.validate()){
                              Navigator.pushReplacementNamed(context, Routes.list, arguments: _usercontroller.text);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(context).primaryColor,
                            padding: const EdgeInsets.symmetric(horizontal: 60.0),),
                          child: const Text(
                            "Login",
                            style: TextStyle(color: Colors.black)
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Text("New User? Create Account")
          ]
        ),
      ),
    );
  }
}
