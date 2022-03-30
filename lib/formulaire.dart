import 'package:flutter/material.dart';

class Formulaire extends StatelessWidget {

  String email="";
  String pwd="";
  String confPwd="";

  final _keyForm=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'connexion'
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
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder()
                    ),
                    validator: (val)=> val!.isEmpty ? "Entrez votre mail" : null,
                    onChanged: (val)=>email=val,
                  ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'mot de passe',
                      border: OutlineInputBorder()
                  ),
                  validator: (val)=> val!.length<4 ? "vous devez inserer au minimum 8 caractères" : null,
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
                  validator:  (val)=>confPwd !=pwd ? 'veuillez confirmer votre mot de passe' : null,
                  obscureText: true,
                ),
                SizedBox(height: 10.0),
                OutlineButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  onPressed:(){
                    if(_keyForm.currentState!.validate()){
                      Navigator.pushReplacementNamed(context, '/liste_contacts');
                    }
                },
                borderSide: BorderSide(width: 1.0,color: Colors.green),
                  child: Text(
                    'Valide pour voir les contacts',
                      style: TextStyle(color: Colors.green),
                  ),
                ),
                SizedBox(height: 10.0),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.blue,
                  onPressed:(){
                    if(_keyForm.currentState!.validate()){
                      Navigator.pushReplacementNamed(context, '/liste_contacts');
                    }
                  },
                  child: Text(
                    'Besoin de voir les contacts ?',
                    style: TextStyle(color: Colors.white),
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
