import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

import '../home.dart';



class JogoMemoria extends StatefulWidget {
  const JogoMemoria({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _JogoMemoriaState createState() => _JogoMemoriaState();
}

class _JogoMemoriaState extends State<JogoMemoria> {
  int rows = 8;
  int cols = 5;
  List<int> numbers = [];
  List<bool> revealed = [];
  List<int> selectedIndices = [];
  Timer? hideTimer;
  Stopwatch stopwatch = Stopwatch();
  int elapsedTime = 0;
  Timer? timer;
  bool _isGameStarted = false; 

// anucioas 



  @override
  void initState() {
    super.initState();
    _generateNumbers();
    timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      if (stopwatch.isRunning && _isGameStarted) {
        setState(() {
          elapsedTime = stopwatch.elapsedMilliseconds;
        });
      }
    });
    

  }

  @override
  void dispose() {
    hideTimer?.cancel();
    timer?.cancel();
    super.dispose();
    
  }

  int totalElapsedTime = 0;
  void _generateNumbers() {
    numbers.clear();
    revealed.clear();
    selectedIndices.clear();

    int totalPairs = rows * cols ~/ 2;
    List<int> allNumbers = List.generate(totalPairs, (index) => index + 1);

    // Duplica cada número e mistura a lista
    allNumbers = [...allNumbers, ...allNumbers];
    allNumbers.shuffle();
    numbers = allNumbers;

    revealed = List.generate(rows * cols, (index) => false);

    _isGameStarted = false; 
    elapsedTime = 0;
    stopwatch.reset();
    stopwatch.start();
  }

   Future<ByteData> loadImage() async {
    const assetPath =
        'lib/assets/telamemoria.png'; // Replace with your image asset path
    return await rootBundle.load(assetPath);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Container(

         decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'lib/assets/Mundo.jpg'), // Replace with your image asset path
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                 
            ElevatedButton(
              child: const Text('Voltar!'),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Homepage()),
                );
              },
            ),
              Expanded(
                child: Container(
                  
                  padding: const EdgeInsets.all(4),
                  color: Colors.white,
                  alignment: Alignment.center,
                  child: Text(
                    'Tempo de Jogo: ${_formatTime(elapsedTime)}',
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.amber),
                  ),
                ),
              ),
           
            ],
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: cols,
              ),
              itemCount: rows * cols,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: revealed[index]
                      ? null
                      : () {
                          _onNumberTap(index);
                        },
                  child: Card(
                    color: revealed[index] ? Colors.grey : Colors.blue,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.coffee_rounded,
                              color: revealed[index] ? Colors.grey : Colors.white,
                              size: 40,
                            ),
                          ],
                        ),
                        Text(
                          revealed[index] ? numbers[index].toString() : '',
                          style: const TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          // Outros widgets podem ser adicionados aqui abaixo do texto do tempo.
          
        ],
      ),
      )
    );
  }

  void _onNumberTap(int index) {
    setState(() {
      if (!_isGameStarted) {
        _isGameStarted = true;
        stopwatch.reset();
        stopwatch.start();
      }

      if (selectedIndices.length == 2) {
        return;
      }
      
      revealed[index] = true;
      selectedIndices.add(index);

      if (selectedIndices.length == 2) {
        _checkForMatch();
      }
    });
  }

  void _checkForMatch() {
    int firstIndex = selectedIndices[0];
    int secondIndex = selectedIndices[1];

    if (numbers[firstIndex] == numbers[secondIndex] && firstIndex != secondIndex) {
      selectedIndices.clear();
      if (_checkIfAllMatched()) {
        _showGameFinishedDialog();
        _nextPhase();
      }
    } else {
      hideTimer = Timer(const Duration(seconds: 1), () {
        setState(() {
          revealed[firstIndex] = false;
          revealed[secondIndex] = false;
          selectedIndices.clear();
        });
      });
    }
  }

  bool _checkIfAllMatched() {
    return revealed.every((match) => match);
  }

  final List<String> randomPhrases = [
    // Lista de frases aleatórias.
    'Você é incrível!',
    'Parabéns pela conquista!',
    'Excelente trabalho!',
    // ... outras frases ...
    'Você é notável!',
  ];

  String getRandomPhrase() {
    final Random random = Random();
    return randomPhrases[random.nextInt(randomPhrases.length)];
  }

  void _showGameFinishedDialog() {
    stopwatch.stop();
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(getRandomPhrase()), // Frase aleatória no título.
          content: Text('Completou a jogada em  ${_formatTime(totalElapsedTime)}'), // Tempo total de jogo no conteúdo.
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Jogar novamente'),
            ),
          ],
        );
      },
    );
  }



  void _nextPhase() {

     totalElapsedTime += elapsedTime;
      _storeGameTime(totalElapsedTime);//armazena tempo
      _generateNumbers();
      stopwatch.stop();
      _isGameStarted = false;
      setState(() {});
    }
  }

  String _formatTime(int milliseconds) {
    int seconds = milliseconds ~/ 1000;
    int minutes = seconds ~/ 60;
    int remainingSeconds = seconds % 60;
    return '$minutes:${remainingSeconds.toString().padLeft(2, '0')}';
  }


Future<void> _storeGameTime(int time) async {
  final prefs = await SharedPreferences.getInstance();
  final gameTimes = prefs.getStringList('game_times') ?? [];

  gameTimes.add(time.toString());
  gameTimes.sort((a, b) => int.parse(a).compareTo(int.parse(b)));
  if (gameTimes.length > 3) {
    gameTimes.removeLast();
  }

  await prefs.setStringList('game_times', gameTimes);
}



 
