import 'package:flutter/material.dart';

class Inscription extends StatefulWidget {

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  String nom="";
  String prenom="";
  String numTel="";
  String pwd="";
  String confPwd="";

  final _keyForm=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Inscription'
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
          child: Form(
            key: _keyForm,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset('assets/logo contact.jpg',height: 100.0,width: 100.0),
                Center(
                  child: Text('Creer un contact'),
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Nom complet',
                      border: OutlineInputBorder()
                  ),
                  validator: (val)=> val!.isEmpty ? "Entrez votre nom" : null,
                  onChanged: (val)=>nom=val,
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Numero téléphone',
                      border: OutlineInputBorder()
                  ),
                  validator: (val)=> val!.isEmpty ? "Entrez votre Numero de téléphone" : null,
                  onChanged: (val)=>numTel=val,
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'mot de passe',
                      border: OutlineInputBorder()
                  ),
                  validator: (val)=> val!.length<4 ? "vous devez inserer au minimum 4 caractères" : null,
                  onChanged: (val)=>pwd=val,
                  obscureText: true,
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'confirmez mot de passe',
                      border: OutlineInputBorder()
                  ),
                  onChanged: (val)=>confPwd=val,
                  validator:  (val)=>confPwd !=pwd ? 'le mot de passe ne correspond pas' : null,
                  obscureText: true,
                ),
                SizedBox(height: 10.0),
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  onPressed:(){
                    if(_keyForm.currentState!.validate()){
                      //Navigator.pushReplacementNamed(context, '/route');
                    }
                  },
                  color: Colors.amber,
                  child: Text(
                    'S\'inscrire',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
                SizedBox(height: 10.0),
                OutlineButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.blue,
                  onPressed:(){
                    if(_keyForm.currentState!.validate()){
                      Navigator.pushReplacementNamed(context, '/connexion');
                    }
                  },
                  borderSide: BorderSide(width: 1.0,color: Colors.black),
                  child: Text(
                    'Avez-vous déjà un compte ?',
                    style: TextStyle(color: Colors.black),
                ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
