import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';
import 'package:sachin_enterprises/pages/customer/Home.dart';
import 'package:sachin_enterprises/providers/LoginStatusProvider.dart';
import 'package:sachin_enterprises/routes/Router.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Loginstatusprovider(),
        ),
      ],
      child: MyApp(

      ),
    )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
       routerConfig: RouterClass().router,
    );
  }
}