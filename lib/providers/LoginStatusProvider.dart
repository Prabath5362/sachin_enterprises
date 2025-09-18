import 'package:flutter/material.dart';


class Loginstatusprovider extends ChangeNotifier {
  bool? isLoggedIn = false;
  String? role = 'customer';

  Future<void> updateLoginStatus() async{
   
   
   notifyListeners();
  }

}
