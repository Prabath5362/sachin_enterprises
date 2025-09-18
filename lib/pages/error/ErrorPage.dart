import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Errorpage extends StatelessWidget {
  const Errorpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Error 404! Page Not Found'),
            ElevatedButton(onPressed: () {
              GoRouter.of(context).go("/");
            }, child: const Text('Go Back'))
          ],
        ),
      ),
    );
  }
}