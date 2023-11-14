
import 'package:ecommerce/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class signOut extends StatefulWidget {
  const signOut({super.key});

  @override
  State<signOut> createState() => _signOutState();
}

class _signOutState extends State<signOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      body: Center(

          child:

            TextButton(onPressed: (){
              FirebaseAuth.instance.signOut();
              Navigator.push(context, MaterialPageRoute(builder: (context)=> loginPage()));

            },

              child: Text('SignOut',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.black54,

              ),
            ),
            )

        ),
      );

  }
}
