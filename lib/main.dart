import 'package:flutter/material.dart';
import 'package:map_search/geolocator.dart';
import 'package:map_search/views/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FutureBuilder(
          future: determinePosition(),
          builder: (context, snapshot) {
            return const SearchScreen();
          }),
    );
  }
}
