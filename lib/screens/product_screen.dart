import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'bottom_sheet.dart';

class productScreen extends StatelessWidget {
 String img;
 productScreen(this.img);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Container(
          alignment: Alignment.topCenter,
          height: MediaQuery.of(context).size.height/1.6,
          decoration: BoxDecoration(
            // color: Colors.white,
             image: DecorationImage(
                 image: AssetImage("images/${img}.jpg"),
                 fit: BoxFit.cover),
           ),
           child: Padding(
             padding: EdgeInsets.all(20),
             child: Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 InkWell(
                   onTap: (){
                     Navigator.pop(context);
                   },
                   child: Container(
                     padding: EdgeInsets.all(8),
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(30)
                     ),
                     child: Icon(
                       Icons.arrow_back,
                     ),
                   ),
                 ),
               ],
             ),
           ),
         ),
          SizedBox(height: 10),
          Padding(padding: EdgeInsets.only(top: 5, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          img,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "₹450",
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.red.shade400,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],

                    ),
                  ),
                  SizedBox(height: 20),
                        Text("This is a very well certified product from our company. We Provide you the Assurance of the quality product. Best Seller in this Dussehra Sale, with maximum number of happy and certified customers. ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16
                          ),
                        ),



                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Tooltip(
                        message: "Go To Cart",
                        child: InkWell(
                          onTap: (){

                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(80)
                            ),
                            child: Icon(CupertinoIcons.cart_fill,size: 20,color: Colors.amber[800]),
                          ),
                        ),
                      ),
                      Tooltip(
                        message: "click to purchase",
                        child: InkWell(
                          onTap: (){
                            showModalBottomSheet(context: context,
                                backgroundColor: Colors.transparent,
                                builder: (context){
                                  return CustomBottomSheet();
                                }
                            );
                          },
                          child: Container(

                            padding: EdgeInsets.symmetric(vertical: 20,horizontal: 60),
                            decoration: BoxDecoration(
                                color: Colors.amber[800],
                                borderRadius: BorderRadius.circular(30),

                            ),
                            child: Text("Buy Now",
                              style: TextStyle(
                                color: Colors.white,
                              ),

                            ),
                          ),
                          ),
                      ),
  ]


                  ),
  ]

              ),

              )

        ],
       ),
     ),
    );
  }
}

