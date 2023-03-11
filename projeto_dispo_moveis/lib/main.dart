import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Home(),
      ),
    );

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String reset_passoword="Esqueceu sua senha";

  TextEditingController login = TextEditingController();
   TextEditingController senha = TextEditingController();


  Widget buildTextField(String label, TextEditingController campo){
    return TextField (
            decoration: InputDecoration(
              labelText: label, labelStyle: TextStyle(color:Colors.black, fontSize: 20.0),
              border: OutlineInputBorder()
            ),
            style: TextStyle(color: Colors.black, fontSize: 25.0),
            keyboardType: TextInputType.number,
            controller: campo,
          );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
    
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 80.0, bottom: 80.0),
              child: Container(
                child: Text("ENTRAR",style:TextStyle(color: Colors.black, fontSize: 45.0, fontFamily: 'Montserrat',),textAlign: TextAlign.center, ),
              ),
            ),
            buildTextField("Login",login),
            Divider(),
            buildTextField("Senha",senha),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(reset_passoword,style:TextStyle(color: Colors.blue, fontSize: 15.0),textAlign: TextAlign.end,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: 50.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 243, 20, 4),),
                  child: Text("Entrar",style: TextStyle(color: Colors.white, fontSize: 25.0),), 
                  onPressed: () {
        
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: 50.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 243, 20, 4),),
                  child: Text("Cadastar",style: TextStyle(color: Colors.white, fontSize: 25.0),), 
                  onPressed: () {
        
                  },
                ),
              ),
            ),              
          ],
        ),
      ),
    );
  }
}