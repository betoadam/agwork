import 'package:flutter/material.dart';
import 'package:agrowork_fl/main.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Column(children: <Widget>[
              TextField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: Colors.white, fontSize: 30),
                  decoration: InputDecoration(
                    labelText: "Telefone do usuário",
                    labelStyle: TextStyle(color: Colors.blueGrey),
                  )),
              Divider(),
              TextField(
                  autofocus: true,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.white, fontSize: 30),
                  decoration: InputDecoration(
                    labelText: "Senha do usuário",
                    labelStyle: TextStyle(color: Colors.blueGrey),
                  )),
              Divider(),
            ]),
            ButtonTheme(
              height: 60.0,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                child: Text(
                  "Enviar",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
