import 'package:flutter/material.dart';

import '../Styles/app_style.dart';

Widget CategoryContainer({
  required String imageUrl,
  required String title,
  required String subtitle,
  required String price,
}) {
  return Container(
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    title,
                    style: Styles.headLineStyle4
                        .copyWith(color: Colors.black, fontSize: 16),
                 
                  ),
                  Text(
                    subtitle,
                    style: Styles.headLineStyle4.copyWith(
                      fontSize: 13,
                      color: Styles.textColor.withOpacity(0.6),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        price,
                        style: Styles.headLineStyle4.copyWith(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(width: 20),
          Image.asset(
            imageUrl,
            width: 60,
            height: 60,
          ),
        ],
      ));
}
