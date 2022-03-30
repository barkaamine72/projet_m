import 'package:flutter/material.dart';
import 'package:projet_m/auth/connexion.dart';
import 'package:projet_m/auth/inscription.dart';
import 'package:projet_m/crud/ajoutContact.dart';


void main()=>runApp(MonApplication());

class MonApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.amber,
          buttonColor: Colors.blue,
          buttonTheme: ButtonThemeData(
            textTheme: ButtonTextTheme.primary,
          )
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/ajoutContact",
      routes: {
        //"/liste_contacts": (context)=>ListContact(),
        //"/details_contact": (context)=>DetailsContact(),
        "/inscription": (context)=>Inscription(),
        "/connexion": (context)=>Connexion(),
        "/ajoutContact": (context)=>AjoutContact(),
      },
    );
  }
}
