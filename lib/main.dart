import 'package:fitules/core/provider.dart';
import 'package:fitules/core/themes/theme_notifier.dart';
import 'package:fitules/local_notice_service.dart';
import 'package:fitules/presentation/pages/get_started/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'color_scheme.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await LocalNoticeService().setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
        providers: repositoryProviders,
        child:Consumer<ThemeNotifier>(
        builder: (context, themeNotifier, child) {
          return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
        darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
        themeMode:   themeNotifier.darkTheme
              ? ThemeMode.dark
              : ThemeMode.light,
        home: const SplashScreen(),
      );
    }));}

}

