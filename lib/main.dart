import 'package:flutter/material.dart';

import 'src/core/core.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await Future.delayed(const Duration(milliseconds: 300));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Show Lover',
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.appTheme(context),
    );
  }
}
