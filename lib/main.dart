import 'package:flutter/material.dart';
import 'package:home_alone_recipe/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:home_alone_recipe/signup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "HomeAloneRecipe", // 앱 이름
      debugShowCheckedModeBanner: false, // 타이틀 바 우측 띠 제거

      // 앱의 기본적인 테마를 지정
      theme:
          ThemeData(primarySwatch: Colors.yellow // priamrySwatch 기본적인 앱의 색상을 지정
              ),

      home: LoginScreen(), // 앱이 실행될 때 표시할 화면의 함수를 호출
    );
  }
}
