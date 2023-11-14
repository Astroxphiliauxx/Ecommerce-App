import 'package:flutter/material.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  int quantity =1;
  int itemPrice = 450;
  int calculateTotalPrice(){
    return quantity * itemPrice;
  }
  List sizes = [
    'S',
    'M',
    'L',
    'XL',
    'XXL'
  ];

  @override

  Widget build(BuildContext context) {
    int totalPayment = calculateTotalPrice();
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 50),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30)
        )
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Container(
            height: 4,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text("Sizes:",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
              ),
              SizedBox(width: 50),
              for(int i=0; i<sizes.length;i++)


                Container(
                  margin: EdgeInsets.symmetric(horizontal: 9),
                 padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                  color: Color(0xFFF7F8FC),
                    borderRadius: BorderRadius.circular(15)
                 ),
                 child: Text(sizes[i]),
                )
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Text("Colors:",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              SizedBox(width: 40),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20)
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(20)
                ),
              )

            ],
          ),
          SizedBox(height: 25),
          Row(
            children: [
              Text(
                "Quantity:",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              SizedBox(width: 40),
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (quantity > 0) {
                      quantity--;
                    }
                  }
                  );
                },
                child: Icon(Icons.remove, color: Colors.black),
              ),
              SizedBox(width: 10),
              Text(
                quantity.toString(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                ),
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  setState(
                          () {
                    quantity++;
                  }
                  );
                },
                child: Icon(Icons.add, color: Colors.black),
              ),
            ],
          ),

          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total Payment:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),
              ),
              Row(
                children: [
                  Text("₹",
                    style: TextStyle(
                        color: Colors.amber[800],
                        fontSize: 22
                    ),
                  ),
                  Text(totalPayment.toString(),
                  style: TextStyle(
                    color: Colors.amber[800],
                    fontSize: 22
                  ),
                  ),
                ],
              ),

            ],
          ),
          SizedBox(height: 30,),
          Center(
            child: InkWell(
              onTap: (){
             //   Navigator.push(context, MaterialPageRoute(builder: (context)=> cartScreen(),
             //   ));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 130, vertical: 20),
                decoration: BoxDecoration(
                  color: Color(0xFFFD725A),
                  borderRadius: BorderRadius.circular(30),

                ),
                child: Text("Checkout",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                    color: Colors.white,

                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

