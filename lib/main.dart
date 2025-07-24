import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_website/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  /*
    GoRouter 패키지
    페이지간 이동 및 경로 관리를 보다 쉽게 만들어주는 도구

    페이지 이동과 각 이동할 페이지 생성은 MaterialApp에서 관리 
   */
  // 페이지 생성을 위한 router 객체
  final _router = GoRouter(
    // routes : 이동할 페이지를 생성하고 정의해주는 속성, 다양한 여러 페이지로 이동하기 때문에 리스트를 전달 받음
    routes: [
      // 이동할 페이지 정의
      GoRoute(path: '/', builder: (context, state) => HomePage()),
    ],
  );

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routerConfig: _router,
    );
  }
}
