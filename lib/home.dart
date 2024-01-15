import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:jogomen/recordes.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'checagem.dart';
import 'compra.dart';
import 'compratilhar.dart';
import 'jogos/forca.dart';
import 'jogos/memoria.dart';
import 'jogos/quiz_ingles.dart';

import 'jogos/quiz_matematica.dart';
import 'jogos/quiz_mundo.dart';
import 'manual.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late SharedPreferences _prefsMundo;
  late SharedPreferences _prefsIngles;
  late SharedPreferences _prefsMatematica;
  late SharedPreferences _prefsForca;
  
  final _firebaseAuth = FirebaseAuth.instance;

  int _scoreMundo = 0;
  int _scoreIngles = 0;
  int _scoreMatematica = 0;
  int _scoreForca = 0;

  bool vestibular = false;

  String nome = '';
  String jogador = '';
  int pontos = 0;


  @override
  void initState() {
    super.initState();
    _initprefsTotal();
    pegarUsuario();
    bannerAd.load();
  }
static const String bannerAdUnitId = 'ca-app-pub-3530759216081068/4430315238';

  BannerAd bannerAd = BannerAd(
  adUnitId: bannerAdUnitId,
  size: AdSize.banner,
  request: const AdRequest(),
  listener: BannerAdListener(
    onAdLoaded: (Ad ad) => ('BannerAd loaded.'),
    onAdFailedToLoad: (Ad ad, LoadAdError error) {
      ad.dispose();
      ('BannerAd failed to load: $error');
    },
  ),
);



@override
void dispose() {
  bannerAd.dispose();
  super.dispose();
}

  Future<void> atualizarPontos(int novosPontos) async {
    User? usuario = _firebaseAuth.currentUser;
    if (usuario != null) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(usuario.uid)
          .update({'pontos': novosPontos});
    }
  }

  void pegarUsuario() async {
    User? usuario = _firebaseAuth.currentUser;
    if (usuario != null) {
      DocumentSnapshot userSnapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc(usuario.uid)
          .get();

      Map<String, dynamic>? userData =
          userSnapshot.data() as Map<String, dynamic>?;
      if (userData != null) {
        setState(() {
          nome = usuario.displayName!;
          pontos = userData['pontos'] ?? 0;
          jogador = userData['jogador'] ??
              'Nike'; // Defina um valor padrão caso 'pontos' seja nulo
          });
        atualizarPontos(total());
      }
    }
  }



  Future<void> _initprefsTotal() async {
    _prefsMundo = await SharedPreferences.getInstance();
    _prefsIngles = await SharedPreferences.getInstance();
    _prefsMatematica = await SharedPreferences.getInstance();
    _prefsForca = await SharedPreferences.getInstance();
   

    setState(() {
      _scoreMundo = _prefsMundo.getInt('scoreMundo') ?? 0;
      _scoreIngles = _prefsIngles.getInt('scoreIngles') ?? 0;
      _scoreMatematica = _prefsMatematica.getInt('scoreMatematica') ?? 0;
      _scoreForca = _prefsForca.getInt('pontosForca') ?? 0;
      
    });
  }

    // Função que salva o progresso do jogo
  

  int total() {
    return _scoreMundo + _scoreIngles + _scoreMatematica + _scoreForca + 50000;
  }

  Widget _body() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),

          Column(
            children: [
              Text(
                'Olá! \n $jogador \n Aprenda  Jogando! \n Supere Seus Limites!',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 22.0,
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 225, 245, 2),
                ),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Alinha o ícone e o texto ao centro horizontal
                children: [
                  // Espaço entre o ícone e o texto

                  Text(
                    ' ${formatarNumero(total())}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 22.0,
                      fontStyle: FontStyle.italic,
                      color: Color.fromARGB(255, 225, 245, 2),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Icon(
                    Icons.diamond, // Substitua pelo ícone que deseja usar
                    color: Color.fromARGB(255, 225, 245, 2),
                  ),
                  const SizedBox(width: 5),
                  const Icon(
                    Icons.diamond, // Substitua pelo ícone que deseja usar
                    color: Color.fromARGB(255, 40, 243, 5),
                  ),
                  const SizedBox(width: 5),
                  const Icon(
                    Icons.diamond, // Substitua pelo ícone que deseja usar
                    color: Color.fromARGB(255, 245, 18, 2),
                  ),
                ],
              ),
              const SizedBox(height: 18),
            
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const JogoDaForca(),
                          ),
                        );
                      },
                      child: const Text(
                        'FORCA',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                  const SizedBox(width: 50),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const JogoMemoria(),
                          ),
                        );
                      },
                      child: const Text(
                        'MEMORIA - Bônus',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 50),
              if (total() >= 50000)
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const QuizMatematicaPage(),
                        ),
                      );
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Centraliza o texto e o ícone
                      children: [
                        Icon(
                          Icons.school, // Substitua pelo ícone que deseja usar
                          color: Colors.white,
                        ),
                        SizedBox(width: 8), // Espaço entre o ícone e o texto
                        Text(
                          'MATEMATICA',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),

                        SizedBox(width: 3), // Espaço entre o ícone e o texto
                        Icon(
                          Icons.diamond, // Substitua pelo ícone que deseja usar
                          color: Colors.yellowAccent,
                        ),
                        Icon(
                          Icons.diamond, // Substitua pelo ícone que deseja usar
                          color: Color.fromARGB(255, 38, 239, 45),
                        ),
                        Icon(
                          Icons.diamond, // Substitua pelo ícone que deseja usar
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                )
              else
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade600,
                    ),
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Centraliza o texto e o ícone
                      children: [
                        Icon(
                          Icons.school, // Substitua pelo ícone que deseja usar
                          color: Colors.white,
                        ),
                        SizedBox(width: 8), // Espaço entre o ícone e o texto
                        Text(
                          'MATEMATICA 50.000',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),

                        SizedBox(width: 3), // Espaço entre o ícone e o texto
                        Icon(
                          Icons.diamond, // Substitua pelo ícone que deseja usar
                          color: Colors.yellowAccent,
                        ),
                        Icon(
                          Icons.diamond, // Substitua pelo ícone que deseja usar
                          color: Color.fromARGB(255, 9, 244, 17),
                        ),
                        Icon(
                          Icons.diamond, // Substitua pelo ícone que deseja usar
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ),
              const SizedBox(width: 50),
              if (total() >= 100000)
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const QuizMundoPage(),
                        ),
                      );
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Centraliza o texto e o ícone
                      children: [
                        Icon(
                          Icons.school, // Substitua pelo ícone que deseja usar
                          color: Colors.white,
                        ),
                        SizedBox(width: 8), // Espaço entre o ícone e o texto
                        Text(
                          'MUNDO',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),

                        SizedBox(width: 3), // Espaço entre o ícone e o texto
                        Icon(
                          Icons.diamond, // Substitua pelo ícone que deseja usar
                          color: Colors.yellowAccent,
                        ),
                        Icon(
                          Icons.diamond, // Substitua pelo ícone que deseja usar
                          color: Color.fromARGB(255, 6, 242, 14),
                        ),
                        Icon(
                          Icons.diamond, // Substitua pelo ícone que deseja usar
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                )
              else
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade600,
                    ),
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Centraliza o texto e o ícone
                      children: [
                        Icon(
                          Icons.school, // Substitua pelo ícone que deseja usar
                          color: Colors.white,
                        ),
                        SizedBox(width: 8), // Espaço entre o ícone e o texto
                        Text(
                          'MUNDO   100.000',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),

                        SizedBox(width: 3), // Espaço entre o ícone e o texto
                        Icon(
                          Icons.diamond, // Substitua pelo ícone que deseja usar
                          color: Colors.yellowAccent,
                        ),
                        Icon(
                          Icons.diamond, // Substitua pelo ícone que deseja usar
                          color: Color.fromARGB(255, 7, 243, 14),
                        ),
                        Icon(
                          Icons.diamond, // Substitua pelo ícone que deseja usar
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ),
              const SizedBox(width: 50),
              if (total() >= 500000)
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const QuizInglesPage(),
                        ),
                      );
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Centraliza o texto e o ícone
                      children: [
                        Icon(
                          Icons.school, // Substitua pelo ícone que deseja usar
                          color: Colors.white,
                        ),
                        SizedBox(width: 8), // Espaço entre o ícone e o texto
                        Text(
                          'INGLES',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),

                        SizedBox(width: 3), // Espaço entre o ícone e o texto
                        Icon(
                          Icons.diamond, // Substitua pelo ícone que deseja usar
                          color: Colors.yellowAccent,
                        ),
                        Icon(
                          Icons.diamond, // Substitua pelo ícone que deseja usar
                          color: Color.fromARGB(255, 9, 237, 17),
                        ),
                        Icon(
                          Icons.diamond, // Substitua pelo ícone que deseja usar
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                )
              else
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade600,
                    ),
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Centraliza o texto e o ícone
                      children: [
                        Icon(
                          Icons.school, // Substitua pelo ícone que deseja usar
                          color: Colors.white,
                        ),
                        SizedBox(width: 8), // Espaço entre o ícone e o texto
                        Text(
                          'INGLES 500.000',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),

                        SizedBox(width: 3), // Espaço entre o ícone e o texto
                        Icon(
                          Icons.diamond, // Substitua pelo ícone que deseja usar
                          color: Colors.yellowAccent,
                        ),
                        Icon(
                          Icons.diamond, // Substitua pelo ícone que deseja usar
                          color: Color.fromARGB(255, 10, 240, 17),
                        ),
                        Icon(
                          Icons.diamond, // Substitua pelo ícone que deseja usar
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ),
              const SizedBox(width: 50),
              if (total() >= 500000)
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Centraliza o texto e o ícone
                      children: [
                        Icon(
                          Icons.school, // Substitua pelo ícone que deseja usar
                          color: Colors.white,
                        ),
                        SizedBox(width: 8), // Espaço entre o ícone e o texto
                        Text(
                          'VESTIBULAR',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),

                        SizedBox(width: 3), // Espaço entre o ícone e o texto
                        Icon(
                          Icons.diamond, // Substitua pelo ícone que deseja usar
                          color: Colors.yellowAccent,
                        ),
                        Icon(
                          Icons.diamond, // Substitua pelo ícone que deseja usar
                          color: Color.fromARGB(255, 10, 233, 18),
                        ),
                        Icon(
                          Icons.diamond, // Substitua pelo ícone que deseja usar
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                )
              else
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade600,
                    ),
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, // Centraliza o texto e o ícone
                      children: [
                        Icon(
                          Icons.school, // Substitua pelo ícone que deseja usar
                          color: Colors.white,
                        ),
                        SizedBox(width: 8), // Espaço entre o ícone e o texto
                        Text(
                          'VESTIBULAR 1.000.000',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),

                        SizedBox(width: 3), // Espaço entre o ícone e o texto
                        Icon(
                          Icons.diamond, // Substitua pelo ícone que deseja usar
                          color: Colors.yellowAccent,
                        ),
                        Icon(
                          Icons.diamond, // Substitua pelo ícone que deseja usar
                          color: Color.fromARGB(255, 12, 235, 19),
                        ),
                        Icon(
                          Icons.diamond, // Substitua pelo ícone que deseja usar
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                )
            ],
          ),
          // Ícones
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.device_unknown,
                    size: 30, color: Colors.amber),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Manualpage(),
                    ),
                  );
                },
              ),
              const SizedBox(width: 10),
              IconButton(
                icon: const Icon(Icons.hub, size: 30, color: Colors.amber),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Compartilharpage(),
                    ),
                  );
                },
              ),
              const SizedBox(width: 10),
              IconButton(
                icon: const Icon(Icons.settings, size: 30, color: Colors.amber),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CompraPage(),
                    ),
                  );
                },
              ),
              const SizedBox(width: 10),
              IconButton(
                icon: const Icon(Icons.emoji_events_outlined,
                    size: 30, color: Colors.amber),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RecordsPage(),
                    ),
                  );
                },
              ),
     
              const SizedBox(width: 10            
               ),
              IconButton(
                icon: const Icon(Icons.door_back_door_outlined,
                    size: 30, color: Colors.amber),
                onPressed: () {
                  sair();
                },
              ),
            ],
          ),
            SizedBox(
          height: 50,
          child: AdWidget(ad: bannerAd),
        ),
        ],



      ),
    );
  }

  void sair() async {
    await _firebaseAuth.signOut().then(
          (user) => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const ChecagemPage(),
            ),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
        .copyWith(statusBarColor: Colors.transparent));
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset('lib/assets/tela2.png', fit: BoxFit.cover)),
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black.withOpacity(0.3),
        ),
        _body(),
      ],
    ));
  }
}

String formatarNumero(int numero) {
  String numeroFormatado = numero.toString();
  String resultado = '';

  int contador = 0;
  for (int i = numeroFormatado.length - 1; i >= 0; i--) {
    contador++;
    resultado = numeroFormatado[i] + resultado;

    if (contador == 3 && i != 0) {
      contador = 0;
      resultado = '.$resultado';
    }
  }

  return resultado;
}
