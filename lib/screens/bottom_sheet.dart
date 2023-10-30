import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
   CustomBottomSheet({super.key});
  List sizes = [
    'S',
    'M',
    'L',
    'XL',
    'XXL'

  ];

  @override
  Widget build(BuildContext context) {
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
            ],
          ),
          SizedBox(height: 20),
          Text("Colors:",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          )
        ],
      ),
    );
  }
}
