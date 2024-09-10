import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {

  final List<Map<String, dynamic>> items = [
  {"icon": Icons.account_balance_wallet, "text": "المحفظة", "route": "/profile"},
  {"icon": Icons.subscriptions, "text": "تفعيل الاشتراك", "route": "/wallet"},
  {"icon": Icons.directions_car, "text": "سياراتي", "route": "/share"},
  {"icon": Icons.saved_search, "text": "المواقع المحفوظة", "route": "/languages"},
  {"icon": Icons.settings, "text": "الإعدادات", "route": "/terms"},
  {"icon": Icons.help, "text": "المساعدة", "route": "/contact"},
  {"icon": Icons.logout, "text": "تسجيل الخروج", "route": "/logout"}, // Changed "Logout" to Arabic "تسجيل الخروج"
];
}
