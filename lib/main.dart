import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spotify/theme.dart';
import 'package:spotify/routes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.light
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Raleway',
        primarySwatch: generateMaterialColor(const Color(0xFF859AC0)),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        )
      ),
      initialRoute: '/',
      routes: {
        '/' : (_) => const DashboardScreen(),
        '/player' : (_) => const PlayerScreen(),
      }
    );
  }
}
