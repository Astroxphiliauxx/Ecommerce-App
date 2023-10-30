import 'package:ecommerce/screens/hidden_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';


class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      body:/* SafeArea(
        child: */Center(
          child: SingleChildScrollView(
           child: Column(
             children: [
               Container(
                 height: 200,
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Container(
                       alignment: Alignment.centerLeft,
                       height: 200,
                       width: 300,
                       child: Padding(
                         padding: EdgeInsets.only(left: 100),
                         child: Lottie.asset("images/anima1.json"),
                       ),
                     ),
                     Container(
                       alignment: Alignment.topRight,
                       child: Padding(
                         padding: EdgeInsets.only(right: 10),
                         child: TextButton(
                           child: Text("Skip Login",
                             style: TextStyle(
                                 color: Colors.black,
                                 decoration: TextDecoration.underline,
                                 decorationStyle: TextDecorationStyle.double,
                                 fontWeight: FontWeight.bold
                             ),
                           ),
                         onPressed: (){
                             Navigator.push(context,
                                 MaterialPageRoute(
                                     builder: (context) => HiddenDrawer() ));
                           },
                         ),
                       ),
                     ),
                   ],
                 ),
               ),

               Animate(
                 effects:
                   [FadeEffect(delay:800.ms),SlideEffect(duration: 1000.ms)],
                 child: Text("Welcome to the Login Page !",
                     style: TextStyle(fontSize: 20,
                     )
                 ) ,
               ),

               SizedBox(height: 80),
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 20.0),
                 child: TextField(decoration: InputDecoration(
                 hintText: 'Username',
                 enabledBorder: OutlineInputBorder(
                 borderSide:
                     BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                       BorderSide(color: Colors.grey),
                  ),
                  fillColor: Colors.white70,
                  filled: true,
                ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(decoration: InputDecoration(
                  hintText: 'Password',
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Colors.grey),
                  ),
                  fillColor: Colors.white70,
                  filled: true,
                ),
                  obscureText: true,
                ),
              ),
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 20.0),
                   child: Row(mainAxisAlignment: MainAxisAlignment.end,
                     children:  [
                     TextButton(
                         child: Text("Forgot Password?",
                          style: TextStyle(
                          color: Colors.black87,
                          ),
                       ),
                       onPressed: (){
                           ScaffoldMessenger.of(context).showSnackBar(
                             SnackBar(content: Text("Under Modification, Apologies !"),
                             ),
                           );
                       },
                     ),
                   ],
                 ),
               ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Center(
                     child: TextButton(
                       child: Text("Sign In",
                         style: TextStyle(
                           fontSize: 18,
                           color: Colors.white,
                         ),
                       ),
                       onPressed: (){
                         ScaffoldMessenger.of(context).showSnackBar(
                           SnackBar(content: Text("Under Modification, Apologies !"),
                           ),
                         );
                       },
                       style: TextButton.styleFrom(
                         fixedSize: Size(450,  50),
                         backgroundColor: Colors.black54,
                       ),
                   ),
                   ),
                ),
            ],
           )
        ),
      ),
     // ),
    );
  }
}


