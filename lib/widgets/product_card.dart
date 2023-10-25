import 'package:flutter/material.dart';
import '../screens/product_screen.dart';

class productCard extends StatelessWidget {
  String img;
  productCard(this.img);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
                    child: Stack(
                       children: [
                        InkWell(
                           onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=> productScreen(img)));
                         },
                           child: Image.asset("images/${img}.jpg",
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
                Text(img,
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
