import 'package:e_sale/models/profile_model.dart';
import 'package:e_sale/modules/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
Hive.registerAdapter(ProfileAdapter());
await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-sale',
      theme: ThemeData(
       
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}

