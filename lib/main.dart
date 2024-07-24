import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mboston/config/routes/routes.dart';
import 'package:mboston/injection_container.dart';

void main() async {
  await dotenv.load(fileName: '.env');
  initializeDependecies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
    );
  }
}
