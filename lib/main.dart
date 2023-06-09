import 'package:flutter/material.dart';
import 'routes/routes.dart';
import 'routes/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: "MochiyPopPOne"),
        title: "Mama's Little One",
        initialRoute: RoutesName.splash,
        onGenerateRoute: Routes.generateRoute);
  }
}
