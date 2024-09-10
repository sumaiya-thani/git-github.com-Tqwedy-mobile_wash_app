import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Utils/Components/home_component.dart';
import '../Utils/Styles/app_style.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Styles.orangeColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                child: Row(
                 
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(90.0),
                      child: Image.asset(
                        "assets/images/Ellipse1.png",
                        height: 150.0,
                        width: 150.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "دراجات نارية",
                          style: Styles.headLineStyle2.copyWith(color: Colors.white),
                        ),
                        Text(
                          "نستخدم الدبابات عشان نقلل\n"
                          "التكلفة عليك ونوصل لسيارتك\n"
                          "بشكل أسرع،\n"
                          "وهي مجهزة بمضخة مياه\n"
                          "وكل الأدوات اللازمة عشان نخلي\n"
                          "سيارتك تلق\n"
                          "سمارت غسيل #نغسل بذكاء",
                          style: Styles.headLineStyle3.copyWith(color: Colors.white),
                          textAlign: TextAlign.center,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 13, horizontal: 40),
                    decoration: BoxDecoration(
                      color: Styles.orangeColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                           onTap:(){
                        Get.toNamed("/profile");
                      },
                          child: Text(
                            "الباقات",
                            style: Styles.headLineStyle2
                                .copyWith(color: Colors.white),
                          ),
                        ),

                        GestureDetector(
                           onTap:(){
                        Get.toNamed("/subscription");},
                          child: Text(
                            "الغسلات",
                            style: Styles.headLineStyle2
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                 CategoryContainer(
                imageUrl: 'assets/images/Ellipse1.png',
                title: 'غسيل خارجي (أوروبي)',
                subtitle: 'غسيل خارجي بالطريقة الأوروبية، تلميع كفرات، طبقة\nواكس لزيادة اللمعة والحماية،',
                price: '49 ر.س',
               
            
              ), 
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
