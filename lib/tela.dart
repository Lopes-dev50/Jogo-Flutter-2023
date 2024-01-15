import 'package:flutter/material.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:jogomen/checagem.dart';


void main() {
  runApp(const CoffeeBlackApp());
}

class CoffeeBlackApp extends StatelessWidget {
  const CoffeeBlackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CoffeeBlackSplashScreen(),
    );
  }
}

class CoffeeBlackSplashScreen extends StatefulWidget {
  const CoffeeBlackSplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CoffeeBlackSplashScreenState createState() => _CoffeeBlackSplashScreenState();
}

class _CoffeeBlackSplashScreenState extends State<CoffeeBlackSplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
     FlutterRingtonePlayer.play(fromAsset: "lib/assets/abertura.mp3");
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
      
    );
    _animationController.forward().whenComplete(() {

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const ChecagemPage()),
      );
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color.fromARGB(255, 27, 91, 174), Color.fromARGB(255, 66, 129, 245)],
              ),
            ),
          ),
          AnimatedBuilder(
            animation: _animationController,
            builder: (BuildContext context, Widget? child) { // Correção aqui
              return Opacity(
                opacity: _animationController.value,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      Image(
                  image: AssetImage('lib/assets/logo.png'),
                  width: 240,
                  height: 180,
                ),
                    SizedBox(height: 20),
                    Text(
                      "Pen-C",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}


