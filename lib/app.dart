import 'package:flutter/material.dart';
import 'package:uiltimate_solutions_flutter_task/presentation/pages/splash_page.dart';

class DelveryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
