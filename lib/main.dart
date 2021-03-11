import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "AloApp",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Alô App"),
            backgroundColor: Colors.deepPurple[900],
          ),
          body: Center(
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Olá mundo!",
                      style: TextStyle(
                          backgroundColor: Colors.deepPurple,
                          color: Colors.white,
                          fontSize: 28),
                    )),
                Padding(
                  padding: EdgeInsets.all(4),
                  child: Text("Descubra o mundo!"),
                ),
                Image.network(
                  "https://images.unsplash.com/photo-1615398004816-7d886abe492b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
                  height: 300,
                ),
                ElevatedButton(
                  child: Text("Contato"),
                  onPressed: () => contato(context),
                )
              ],
            ),
          ),
        ));
  }

  contato(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Contato"),
            content: Text("Meu email: charleno@gmail.com"),
            actions: [
              ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text("Fechar"))
            ],
          );
        });
  }
}
