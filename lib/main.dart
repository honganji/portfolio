import 'package:flutter/material.dart';
import 'package:portfolio/router.dart';
import 'package:portfolio/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:url_strategy/url_strategy.dart';
import 'firebase_options.dart';

void main() async {
	setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Yuji Toshihiro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
			routerConfig: router,
      // home: const Wrapper(),
    );
  }
}
