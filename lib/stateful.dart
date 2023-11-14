import 'package:ecommerce/screens/product_screen.dart';
import 'package:ecommerce/widgets/product_card.dart';
import 'package:flutter/material.dart';

class stateful extends StatefulWidget {
  final String img;


  const stateful({ required this.img }) ;

  @override
  State<stateful> createState() => _statefulState();
}

class _statefulState extends State<stateful> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
              child: Stack(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> productScreen(widget.img)));
                    },
                    child: Image.asset("images/${widget.img}.jpg",
                      fit: BoxFit.cover,
                      height: 240,
                    ),
                  )
                ],
              )
          ),
        ),
        SizedBox( height: 10,),
        Padding(
          padding: EdgeInsets.all(5),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.img,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "₹450",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
