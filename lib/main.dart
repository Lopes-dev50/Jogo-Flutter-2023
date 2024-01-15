import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:jogomen/tela.dart';
import 'firebase_options.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
   MobileAds.instance.initialize();
 //await FirebaseMessaging.instance.setAutoInitEnabled(true);
  // to initialize the notificationservice.
// ignore: unused_local_variable
FirebaseAnalytics analytics = FirebaseAnalytics.instance;


  //========
  //timeago.setLocaleMessages('pt_BR', timeago.PtBrMessages());
  //timeago.setLocaleMessages('pt_BR_short', timeago.PtBrShortMessages());
  runApp(const MemoryGameApp());

 // final fcmToken = await FirebaseMessaging.instance.getToken();
 // await FirebaseMessaging.instance.setAutoInitEnabled(true);
 // log("FCMToken $fcmToken");
 // print(fcmToken);
}

class MemoryGameApp extends StatelessWidget {
  const MemoryGameApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
     // theme: ThemeData.from(
     //   colorScheme: const ColorScheme.light(),
     // ),
      title: 'Memory Game',
      home: const CoffeeBlackSplashScreen(),
    );
  }

 //  Widget build(BuildContext context) {
 //   return MaterialApp(
 //    theme: ThemeData(
 //     useMaterial3: true,
//
 //   colorScheme: const ColorScheme.light().copyWith(
 //     primary: Colors.green[700],
 //     secondary: Colors.green[700],
 //   ),
 //   inputDecorationTheme: InputDecorationTheme(
 //     filled: true,
 //     fillColor: Theme.of(context).colorScheme.onPrimary,
 //     hintStyle: TextStyle(
 //       color: Colors.green[700],
 //     ),
 //   ),
 //   floatingActionButtonTheme: const FloatingActionButtonThemeData(
 //     foregroundColor: Colors.white,
 //   ),
 // ),
 //     title: 'Memory Game',
 //     home: const CoffeeBlackSplashScreen(),
 //   );
 // }


}
