import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Utils/Components/subscription_component.dart';
import '../Utils/Styles/app_style.dart';

class Subscription extends StatelessWidget {
  const Subscription({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: Styles.bgColor,
      appBar: AppBar(
        backgroundColor: Styles.bgColor,
        title: Text("الاشتراكات".tr),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              right: 20.0, left: 20.0, top: 10, bottom: 40),
          child: Column(
            children: [
          
              SizedBox(
                height: 20,
              ),
             
              SubscriptionContainer(
                "باقة بدون قروشة(خارجي فقط)",
               
                "24 غسيل خارجي اوروبي",
                "20",
                "840 رس",
                "35 ريال لكل غسلة",
                 "الصلاحية \180 يوم",

                (){}
               
              
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}