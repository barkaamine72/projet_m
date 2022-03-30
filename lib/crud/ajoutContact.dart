import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class AjoutContact extends StatefulWidget {

  @override
  State<AjoutContact> createState() => _AjoutContactState();
}

class _AjoutContactState extends State<AjoutContact> {

  String nom='';
  String prenom='';
  String numTel='';

  AjoutContact(String nom, String prenom, String numTel){
    this.nom=nom;
    this.prenom=prenom;
    this.numTel=numTel;
  }

  final _keyForm=GlobalKey<FormState>();
  //FirebaseFirestore firestore = FirebaseFirestore.instance;
  //late User currentUser;

  @override
  Widget build(BuildContext context) {
    /*CollectionReference users= FirebaseFirestore.instance.collection('users');
    Future<void> ajoutContact() {
      // Call the user's CollectionReference to add a new user
      return users
          .add({
        'nom': nom, // John Doe
        'prenom': prenom, // Stokes and Sons
        'numTel': numTel
      })
          .then((value) => print("User Added"))

          .catchError((error) => print("Failed to add user: $error"));
    }*/
    return Scaffold(
      appBar: AppBar(
        title: Text('Nouveau Contact'),
        backgroundColor: Colors.white,
        actions: <Widget>[
          RaisedButton(
              onPressed: (){

              },
              color: Colors.black,
              child: Text('Enregistrer',style: TextStyle(color: Colors.white)),

          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 50.0,horizontal: 30.0),
              child: Form(
                key: _keyForm,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){

                      },
                      child: CircleAvatar(
                        radius: 40.0,
                        backgroundImage: AssetImage('assets/md-contact-16.png '),
                      ),
                    ),
                    IconButton(
                        icon: Icon(Icons.camera, color: Colors.amber), onPressed: () {  },
                    ),
                    SizedBox(height:10.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Nom',
                        border: OutlineInputBorder(),
                      ),
                      validator: (val)=> val!.isEmpty ? "Entrez votre nom" : null,
                      onChanged: (val)=>nom=val,
                    ),
                    SizedBox(height:10.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'prenom',
                        border: OutlineInputBorder(),
                      ),
                      validator: (val)=> val!.isEmpty ? "Entrez votre prenom" : null,
                      onChanged: (val)=>prenom=val,
                    ),
                    SizedBox(height:10.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Numero de telephone',
                        border: OutlineInputBorder(),
                      ),
                      validator: (val)=> val!.isEmpty ? "Entrez votre numero de telephone" : null,
                      onChanged: (val)=>numTel=val,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
