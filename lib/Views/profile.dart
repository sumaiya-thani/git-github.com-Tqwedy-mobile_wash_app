import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controllers/profile_controller.dart';
import '../Utils/Styles/app_style.dart';

class Profile extends StatelessWidget {
   Profile({super.key});
final ProfileController menu = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          "حسابي".tr,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
         
        children: [
          Container(
            decoration: BoxDecoration(
              color: Styles.bgColor
            ),
            child: Row(
              children: [
               
              
                Column(
              
                  children: [
                    Text("User Name".tr,
                        style: Styles.headLineStyle3
                            .copyWith(color: Colors.black)),
                    Row(
                      children: [
                        Icon(Icons.star, color: Styles.orangeColor,size: 10),
                        SizedBox(width: 4),
                        Text("0.0",
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.black))
                      ],
                    ),
                    
                  ],
                  
                
              ),
               SizedBox(width: 20),
               const Icon(
                  Icons.account_circle,
                  color: Colors.white,
                  size: 60,
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),

           child:  Container(
              decoration: BoxDecoration(
                color: Styles.sheetWhiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(

                padding: const EdgeInsets.only(top: 10, right: 9, left: 9),
                child: GetBuilder<ProfileController>(
                  builder: (context) {
                    return ListView.separated(
                      shrinkWrap: true,
                      itemCount: menu.items.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Get.toNamed(menu.items[index]["route"]);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10),
                            // margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  menu.items[index]["icon"],
                                  color: Styles.orangeColor,
                                ),
                                SizedBox(width: 20),
                                Expanded(
                                  child: Text(
                                    menu.items[index]["text"].toString().tr,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.grey,
                                  size: 16,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context,index){
                        return SizedBox(height: 10,);
                      },
                    );
                  }
                ),
              ),
            ),
          )
          ),

        ],
      ),
    );
  }
}