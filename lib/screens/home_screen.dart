

import 'package:ecommerce/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


import '../login.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex = 0;
  List catList= [
    "All",
    "Best Selling",
    "Jackets",
    "Pants",
    "Bags"
  ];
  List imgList = [
    "Warm Jacket",
    "Black T-shirt",
    "Black Pant",
    "Ladies Bag"
  ];
  @override
  Widget build(BuildContext context){

    return Scaffold(


      backgroundColor: Colors.deepPurple.shade100,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 20, left: 15),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.end,
                 children:[
                    Padding(
                       padding: EdgeInsets.only(right: 15),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.start,

                         children: [
                           Container(
                             width: MediaQuery.of(context).size.width/1.1,        //search bar is now 1.5 times reduced
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(10),
                             ),
                             child: TextFormField(
                               decoration: InputDecoration(
                                 label: Text("Search product"),
                                 border: InputBorder.none,
                                 prefixIcon: Icon(
                                   Icons.search,
                                   size: 35,
                                   color: Colors.grey,
                                 )
                               ),
                             ),
                           ),
                  ],
               ),
            ),
                   Container(
                     margin: EdgeInsets.only( top: 20,right: 15),
                     alignment: Alignment.center,
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(15),
                       child: Image.asset("images/deal poster.jpg",
                         fit: BoxFit.fill,
                         width: MediaQuery.of(context).size.width,
                       ),
                     ),
                   ),
                   SingleChildScrollView(
                     scrollDirection: Axis.horizontal,
                     child: Padding(
                       padding: EdgeInsets.only(top: 20),
                       child: Row(
                          children: [
                           for(int i =0; i<catList.length;i++)
                             Container(
                               margin: EdgeInsets.all(8),
                               padding: EdgeInsets.symmetric( horizontal: 20),
                               decoration: BoxDecoration(
                                 color: catList[i]=="All" ? Colors.amber[800] : Colors.grey.shade400,
                                 borderRadius: BorderRadius.circular(30),
                               ),
                               child: TextButton(
                                 child: Text(
                                   catList[i],
                                   style: TextStyle(
                                     color: catList[i] == "All" ? Colors.black : Colors.white,
                                     fontSize: 16,
                                   ),
                                 ),
                                 onPressed: () {
                                   Navigator.push(context,
                                     MaterialPageRoute(
                                          builder: (context) =>
                                       loginPage() ));
                                   }
                                   )
                               ),
                       ],
                       ),
                     ),
                   ),
                   SizedBox(height: 20),
                   GridView.builder(
                     physics: NeverScrollableScrollPhysics(),
                       shrinkWrap: true,
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                         crossAxisCount: 2,
                         childAspectRatio: (MediaQuery.of(context).size.width - 30 -15)/(2*290),
                         mainAxisSpacing: 20,
                         crossAxisSpacing: 15,
                   ),
                       itemCount: imgList.length,
                       itemBuilder: (_,i) {
                       return productCard(imgList[i]);
                     }
                   )
]          ),
        ),
      ),
    ),
                 );
  }
}