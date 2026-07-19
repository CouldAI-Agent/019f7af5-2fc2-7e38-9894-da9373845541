import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/course_screen.dart';

void main() {
  runApp(const JavaCourseApp());
}

class JavaCourseApp extends StatelessWidget {
  const JavaCourseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Java Masterclass',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/course': (context) => const CourseScreen(),
      },
    );
  }
}
