import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:sachin_enterprises/pages/admin/AdminPage.dart';
import 'package:sachin_enterprises/pages/auth/Login.dart';
import 'package:sachin_enterprises/pages/customer/Home.dart';

import 'package:sachin_enterprises/pages/admin/ProductPage.dart';
import 'package:sachin_enterprises/pages/error/ErrorPage.dart';
import 'package:sachin_enterprises/providers/LoginStatusProvider.dart';

import 'package:sachin_enterprises/providers/LoginStatusProvider.dart';

class RouterClass {
     final router = GoRouter(
      initialLocation:   "/",
      errorPageBuilder: (context, state) =>
          MaterialPage(key: state.pageKey, child: Errorpage()),
      redirect: (context, state) {
        final box  = GetStorage();
        final roleData  =  box.read("role");
        final token = box.read("token");
        if(token != null){
          if(roleData == "admin"){
            return "/login"; // change this addmin this lgin add for login page styling
          }else{
            return "/";
          }
        }else{
          return "/login";
        }
           
        
        
      },
      routes: [
        GoRoute(
          path: "/",
          name: "home",
          builder: (context, state) {
            return Home();
          },
        ),
        GoRoute(
          path: "/login",
          name: "login",
          builder: (context, state) => LoginPage(),
        ),

        GoRoute(
          path: "/admin",
          name: "admin",
          builder: (context, state) {
            return AdminPage();
          },
          routes: [
            GoRoute(
              path: "product",
              name: "product",
              builder: (context, state) => Productpage(),
            ),
          ],
        ),
      ],
    );
  
}
