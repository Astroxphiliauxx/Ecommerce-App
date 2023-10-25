import 'package:ecommerce/screens/hidden_drawer.dart';
import 'package:ecommerce/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'login.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
           child: Column(
             children: [
               Container(
                 alignment: Alignment.topRight,
                 child: Padding(
                   padding: EdgeInsets.only(right: 10),
                   child: TextButton(
                     child: Text("Skip Login",
                       style: TextStyle(
                         color: Colors.black54,
                         decoration: TextDecoration.underline,
                         decorationStyle: TextDecorationStyle.double,

                       ),
                     ),
                     onPressed: (){
                       Navigator.push(context,
                           MaterialPageRoute(
                               builder: (context) =>
                                   HiddenDrawer() ));

                     },
                   ),

                 ),
               ),
               Container(
                 height: 300,
                 width: 500,
                 child: Padding(
                     padding: EdgeInsets.all(10),
                   child: Lottie.asset("images/anima1.json"),
                  ),
               ),


               SizedBox(height: 100),
               Animate(
                 effects:
                   [FadeEffect(delay:800.ms),SlideEffect(duration: 1000.ms)],
                 child: Text("Welcome to the Login Page",
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
               Center(
                 child: TextButton(
                   child: Text("Sign In",
                     style: TextStyle(
                       color: Colors.white,
                     ),
                   ),
                   onPressed: (){
                     ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(content: Text("Under Modification, Apologies !"),
                       ),
                     );
                   },
                   style: ButtonStyle(
                     backgroundColor: MaterialStateProperty.all<Color>(Colors.black54),
                 ),
               ),
               ),
            ],
           )
        ),
      ),
      ),
    );
  }
}


