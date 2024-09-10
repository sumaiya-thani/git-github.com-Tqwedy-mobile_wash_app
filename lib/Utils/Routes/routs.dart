

import 'package:car_wash/Views/profile.dart';
import 'package:get/get.dart';

import '../../Views/home.dart';
import '../../Views/subscription.dart';

List<GetPage> route = [
  GetPage(name: '/home', page: ()=> Home()),
   GetPage(name: '/profile', page: ()=> Profile()),
    GetPage(name: '/subscription', page: ()=> Subscription()),
 
];
