import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AdminPage extends StatefulWidget {

  AdminPage( {super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Page'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text('Welcome to the Admin Page!'),
          ),
          ElevatedButton(onPressed: () {
            GoRouter.of(context).go("/login");
          }, child: const Text('Logout')),

          ElevatedButton(onPressed: () {
            GoRouter.of(context).go("/admin/product");
          }, child: const Text('product List')),

        ],
      ),
    );
  }
}