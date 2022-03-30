import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

class Connexion extends StatefulWidget {

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  //FirebaseAuth _auth = FirebaseAuth.instance;
  //User courentUtil;
  //final CoollectionReference collectionUtil= Firestore.instance.collection('utilisateurs');
  String numTel="";
  String pwd="";
  final _keyForm=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    /*FirebaseAuth.instance.currentUser().then((FirebaseUser util){
      setState(() {
        this.courentUtil=util;
      });
    });
    String idUtil(){
      if(courentUtil!=null){
        return courentUtil.uid;
      }else{
        return 'pas d\'utilisateur courant';
      }
    }*/
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
        child: Form(
        key: _keyForm,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset('assets/logo contact.jpg',height: 100.0,width: 100.0),
              Center(
                child: Text('Connectez-vous',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Numero de téléphone',
                    border: OutlineInputBorder()
                ),
                validator: (val)=> val!.isEmpty ? "Entrez votre nomuero de téléphone" : null,
                onChanged: (val)=>numTel=val,
              ),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'mot de passe',
                    border: OutlineInputBorder()
                ),
                validator: (val)=> val!.length<4 ? "mot de passe incorrect" : null,
                onChanged: (val)=>pwd=val,
                obscureText: true,
              ),
              SizedBox(height: 10.0),
              FlatButton(onPressed: (){
                if(_keyForm.currentState!.validate()){
                 // AuthResult result=await _auth.createUserWithEmailAndPassword(email: email, password: password)
                  //Navigator.pushReplacementNamed(context, '/liste_contacts');
                  }
                },
                  color: Colors.amber,
                  child:Text('connexion',
                      style: TextStyle(color: Colors.black),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
              ),
              OutlineButton(
                onPressed: (){
                  Navigator.pushReplacementNamed(context, '/inscription');
                },
                borderSide: BorderSide(width: 1.0,color: Colors.black),
                child:Text('Besoin d\'un nouveau compte?',
                    style: TextStyle(color: Colors.black),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              )
          ],
        ),
      ),
      ),
    );
  }
}
