import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Center(
            child: Text('Welcome to the Login Page!'),
          ),
          ElevatedButton(onPressed: () {
            
            GoRouter.of(context).go("/admin");
          }, child: const Text('Login'))
        ],
      ),
    );
  }
}