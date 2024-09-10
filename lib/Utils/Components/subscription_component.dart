import 'package:flutter/material.dart';

import '../Styles/app_style.dart';

Widget SubscriptionContainer(
  String description,
  String price,
  String promotionText,
  String price2,
  String price3,
  String expire,
  VoidCallback onTap,
) {
  return Container(
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 8,
          offset: Offset(0, 2),
        ),
      ],
    ),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 201, 191, 191),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: onTap,
                icon: Icon(Icons.arrow_back_ios_new),
              ),
              Column(
                children: [
                  Text(
                    price2,
                    style: Styles.headLineStyle2
                        .copyWith(fontSize: 12, color: Colors.black),
                  ),
                  Text(
                    price3,
                    style: Styles.headLineStyle4.copyWith(fontSize: 12),
                  ),
                ],
              ),
           
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    description,
                    style: Styles.headLineStyle2
                        .copyWith(fontSize: 16, color: Styles.orangeColor),
                  ),
                  Text(
                    expire,
                    style: Styles.headLineStyle4
                        .copyWith(fontSize: 14, color: Styles.orangeColor),
                  ),
                ],
              ),
            ],
          ),
        ),
         SizedBox(height: 10), 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              price,
              style: Styles.headLineStyle4
                  .copyWith(fontSize: 14, color: Styles.orangeColor),
            ),
            SizedBox(width: 190), 
            
           
          ],
        ),
        SizedBox(height: 10), 
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/tabby.png",
                width: 70,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              promotionText,
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ],
    ),
  );
}
