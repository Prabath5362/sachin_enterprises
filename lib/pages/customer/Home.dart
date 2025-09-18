import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:sachin_enterprises/providers/LoginStatusProvider.dart';

class Home extends StatefulWidget {

   Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          Center(
            child: Column(
              children: [
                Text('Welcome to the Home Page!'),
              ],
            ),
          ),
          
          ElevatedButton(onPressed: () {
            final box = GetStorage();
            box.remove("token");
            GoRouter.of(context).go("/login");
          }, child: const Text('Logout')),


          ElevatedButton(onPressed: () {
            final box = GetStorage();
            box.write("token", "#123456789");
            box.write("role", "admin");
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Token added")));
          }, child: const Text('Add token'))
        ],
      )
    );
  }
}