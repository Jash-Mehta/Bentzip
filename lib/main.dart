import 'package:bentzip/MainScreen/routers/app_router.dart';
import 'package:flutter/material.dart';
import 'MainScreen/screens/selection_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          iconTheme: const IconThemeData(color: Colors.black),
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: appRouter.onGenerateRoute,
        home: const Selection_screen());
  }
}
