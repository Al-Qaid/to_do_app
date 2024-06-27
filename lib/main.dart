import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/pages/about_page.dart';
import 'package:todo_app/pages/feedback_page.dart';
import 'package:todo_app/pages/home_page.dart';
import 'package:todo_app/themes/theme_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: const HomePage(),

      // routes
      routes: {
        '/homepage': (context) => const HomePage(),
        '/aboutpage': (context) => const AboutPage(),
        '/feedback': (context) => const FeedbackPage(),
      },
    );
  }
}
