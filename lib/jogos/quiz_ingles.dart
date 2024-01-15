import 'dart:async';
import 'dart:math';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../dados/Ingles.dart';

import '../home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const QuizInglesPage(),
    );
  }
}

class QuizInglesPage extends StatefulWidget {
  const QuizInglesPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _QuizInglesPageState createState() => _QuizInglesPageState();
}

class _QuizInglesPageState extends State<QuizInglesPage> {
  late SharedPreferences _prefsIngles;
  int _currentFaseIndexIngles = 0;
  int _currentQuestionIndexIngles = 0;
  int _pontosIngles = 0;
  int _scoreIngles = 0;
  late Timer _timer;
  int _secondsRemaining = 60;
  double _progressValueInglesAcerto = 0.0;
  double _progressValueInglesErro = 0.0; // Valor do progresso (0.0 a 1.0)
  late ConfettiController _confettiController;
  late ConfettiController _confettiControllerAcertou;
  //final Random _random = Random();
  bool _isVisible = false;

  void _showWidget() {
    setState(() {
      _isVisible = true;
    });

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isVisible = false;
      });
    });
  }

  void _playConfettiAnimation() {
    _confettiControllerAcertou.play();
    Future.delayed(const Duration(seconds: 1), () {
      _confettiControllerAcertou.stop();
    });
  }

  @override
  void initState() {
    super.initState();
    _initprefsIngles();
    _confettiController = ConfettiController();
    _confettiControllerAcertou = ConfettiController();
    _startTimer();
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

  Future<void> _initprefsIngles() async {
    _prefsIngles = await SharedPreferences.getInstance();
    _currentFaseIndexIngles = _prefsIngles.getInt('currentFaseIndexIngles') ?? 0;
    _pontosIngles = _prefsIngles.getInt('pontosIngles') ?? 0;
    // Embaralhar as perguntas da fase atual
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_secondsRemaining > 0) {
          _secondsRemaining--;
        } else {
          _handleAnswer(-1); // Tempo esgotado
        }
      });
    });
  }

  void _resetTimer() {
    _timer.cancel();
    _secondsRemaining = 60;
    _startTimer();
  }

  void _barraPergunta() {
    int numero = (_currentFaseIndexIngles + 1);

    double resultadoDivisaoAcerto = 1.0 / (20 * numero.toDouble());
    if (_progressValueInglesAcerto < numero.toDouble()) {
      _progressValueInglesAcerto += resultadoDivisaoAcerto;
      _pontosIngles += 501;
      FlutterRingtonePlayer.play(fromAsset: "lib/assets/pop.mp3");
      Future.delayed(const Duration(seconds: 1), () {
        _playConfettiAnimation();
      });
    } else {
      _progressValueInglesAcerto = 0.0;
    }
   
  }

  void _barraPerguntaErrada() {
    int numero = (_currentFaseIndexIngles + 1);
    double resultadoDivisao = 1.0 / (10 * numero.toDouble());
    if (_progressValueInglesErro < 1.0) {
      _progressValueInglesErro += resultadoDivisao;
      FlutterRingtonePlayer.play(fromAsset: "lib/assets/error.mp3");
      _showWidget();

      if (_pontosIngles >= 600) {
        _pontosIngles -= 502;
        double resultadoDivisaoAcerto = 1.0 / (20 * numero.toDouble());
        _progressValueInglesAcerto -= resultadoDivisaoAcerto;
      }
    }
    if (_progressValueInglesErro > 1.0) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content:
                _repetirfaseCard(), // inicia fase por ter mais erro que o permitido
          );
        },
      );
    }
  }

  // Função que lida com a conclusão de uma fase
  void _handlePhaseCompletion() {
    setState(() {
      _scoreIngles = _pontosIngles;
      _pontosIngles = 0;
      _currentQuestionIndexIngles = 0;
      _progressValueInglesAcerto = 0.0;
      _progressValueInglesErro = 0.0;
      _resetTimer();
      _initprefsIngles(); //misturar perguntas
      _saveGameIngles();
    });
    Navigator.of(context).pop();
  }

  // Função que lida com a pontuação abaixo do limiar
  void _handleScoreBelowThreshold() {
    setState(() {
      _pontosIngles = 0;
      _currentQuestionIndexIngles = 0;
      _progressValueInglesAcerto = 0.0;
      _progressValueInglesErro = 0.0;
      _resetTimer();
      _saveGameIngles();
    });
    Navigator.of(context).pop();
  }

  // Função que zera o jogo por completo
  void _resetGameIngles() {
    setState(() {
      _currentQuestionIndexIngles = 0;
      _progressValueInglesAcerto = 0.0;
      _progressValueInglesErro = 0.0;
      _resetTimer();
      _saveGameIngles();
    });
  }

  //============================================================

  void _handleAnswer(int selectedIndex) {
    if (_secondsRemaining == 0) {
      // Lógica de reinicialização aqui
      _currentQuestionIndexIngles = 0;
      _resetTimer();
      _initprefsIngles(); // Shuffle questions
      return;
    }

    _resetTimer();

    final currentQuestion =
        quizFases[_currentFaseIndexIngles].perguntas[_currentQuestionIndexIngles];
    final correctAnswerIndex =
        currentQuestion.answers.indexOf(currentQuestion.correctAnswer);


     
    if (selectedIndex == correctAnswerIndex) {
      _handleCorrectAnswer();
    } else {
      _handleIncorrectAnswer();
    }
  }

  void _handleCorrectAnswer() {
    // Obtém a pergunta atual
    final currentQuestion =
        quizFases[_currentFaseIndexIngles].perguntas[_currentQuestionIndexIngles];

    // Embaralha as respostas
    _shuffleAnswers(currentQuestion.answers);
    // Move a pergunta atual para o final da fila
    quizFases[_currentFaseIndexIngles]
        .perguntas
        .removeAt(_currentQuestionIndexIngles);
    quizFases[_currentFaseIndexIngles].perguntas.add(currentQuestion);

    // Atualiza o progresso para respostas corretas
    _barraPergunta();

    // Avança para a próxima pergunta ou fase
    _advanceToNextQuestionOrPhase();
  }

  void _handleIncorrectAnswer() {
    // Obtém a pergunta atual
    Future.delayed(const Duration(seconds: 4), () {
      final currentQuestion = quizFases[_currentFaseIndexIngles]
          .perguntas[_currentQuestionIndexIngles];

      // Embaralha as respostas
      _shuffleAnswers(currentQuestion.answers);

      // Move a pergunta atual para o final da fila
      quizFases[_currentFaseIndexIngles]
          .perguntas
          .removeAt(_currentQuestionIndexIngles);
      quizFases[_currentFaseIndexIngles].perguntas.add(currentQuestion);

      // Avança para a próxima pergunta ou fase
      _advanceToNextQuestionOrPhase();
    });
    // Atualiza o progresso para respostas incorretas
    _barraPerguntaErrada();
  }

  void _shuffleAnswers(List<String> answers) {
    final random = Random();
    for (var i = answers.length - 1; i > 0; i--) {
      final j = random.nextInt(i + 1);
      final temp = answers[i];
      answers[i] = answers[j];
      answers[j] = temp;
    }
  }

  void _advanceToNextQuestionOrPhase() {
    if (_pontosIngles < 9999 * (_currentFaseIndexIngles + 1)) {
      // Avança para a próxima pergunta da mesma fase
      _currentQuestionIndexIngles++;
    } else {
      // Reinicia as perguntas da fase atual
      _currentQuestionIndexIngles = 0;
      _progressValueInglesAcerto = 0.0;
      _progressValueInglesErro = 0.0;

      if (_pontosIngles >= 9999 * (_currentFaseIndexIngles + 1)) {
        if (_currentFaseIndexIngles < quizFases.length - 1) {
          // Avança para a próxima fase
          _currentFaseIndexIngles++;
          
          _confettiController.play();
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: _proximaFaseCard(), // vai para proximafase
              );
            },
          );
        } else {
          // O jogador completou todas as fases, reinicie o jogo
          _currentFaseIndexIngles = 0;
        }
      }
    }

    // Salva o progresso
    _saveGameIngles();
  }

  // Função que salva o progresso do jogo
  void _saveGameIngles() {
    _prefsIngles.setInt('currentFaseIndexIngles', _currentFaseIndexIngles);
    _prefsIngles.setInt('pontosIngles', _pontosIngles);
    _prefsIngles.setInt('scoreIngles', _scoreIngles);
  }

  // Constrói um cartão para indicar a conclusão de uma fase
  Widget _proximaFaseCard() {
    return Card(
      color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'Parabéns! Você completou a fase com sucesso e avançou para a próxima fase!',
              style: TextStyle(color: Colors.white, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            ConfettiWidget(
              confettiController: _confettiController,

              blastDirection: -pi / 4,
              emissionFrequency: 0.03, // Frequência de emissão de confete
              numberOfParticles: 20, // Número de confetes
              shouldLoop: false, // Se deve repetir a animação
              colors: const [
                Colors.red,
                Colors.green,
                Colors.blue
              ], // Cores dos confetes
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                const Image(
                  image: AssetImage('lib/assets/trofeu.png'),
                  width: 240,
                  height: 180,
                ),
                Positioned(
                  top: 24, // Ajuste a posição vertical conforme necessário
                  child: Text(
                    (_currentFaseIndexIngles).toString(),
                    style: const TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _handlePhaseCompletion();
              },
              child: const Text(
                'Continuar',
                style: TextStyle(fontSize: 18),
              ),
            ),
            // Configuração do widget de confete
          ],
        ),
      ),
    );
  }

  // Constrói um cartão para indicar a pontuação abaixo do limiar

  final List<String> randomPhrases = [
    // Lista de frases aleatórias.
    'Vai dar certo! Continue jogando.',
    'Siga em frente, você consegue!',
    'Não pare agora, você pode!',
    'Próxima tentativa é a vitoriosa!',
    'Você é resiliente, continue!',
    'Continue, você está quase lá!',
    'Uma derrota não te define.',
    'Persista e vença!',
    'Não desista, continue jogando.',
    'Falhar é só um passo rumo ao sucesso!',
  ];

  String getRandomPhrase() {
    final Random random = Random();
    return randomPhrases[random.nextInt(randomPhrases.length)];
  }

  Widget _repetirfaseCard() {
    return Card(
      color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            const Text(
              'Você não atingiu a pontuação de para avançar. A fase será reiniciada.',
              style: TextStyle(color: Colors.white, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            const Image(
              image: AssetImage('lib/assets/perdeu.png'),
              width: 240,
              height: 180,
            ),
            const SizedBox(height: 20),
            Text(
              getRandomPhrase(),
              style: const TextStyle(color: Colors.white, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _handleScoreBelowThreshold,
              child: const Text(
                'Reiniciar Fase',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<ByteData> loadImage() async {
    const assetPath =
        'lib/assets/Ingles.jpg'; // Replace with your image asset path
    return await rootBundle.load(assetPath);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'lib/assets/Ingles.jpg'), // Replace with your image asset path
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 40),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      ClipOval(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Homepage()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Colors.blue, // Define a nova cor do botão
                                padding: const EdgeInsets.all(5),
                              ),
                              child: const Icon(
                                  Icons.arrow_circle_left_outlined,
                                  size: 50,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ConfettiWidget(
                        confettiController: _confettiControllerAcertou,
                        blastDirection: -3.14 / 2,
                        emissionFrequency: 0.03,
                        numberOfParticles: 10,
                        colors: const [Colors.red, Colors.green, Colors.blue],
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          const Image(
                            image: AssetImage('lib/assets/trofeu.png'),
                            width: 120,
                            height: 90,
                          ),
                          Positioned(
                            top:
                                11, // Ajuste a posição vertical conforme necessário
                            child: Text(
                              (_currentFaseIndexIngles).toString(),
                              style: const TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ClipOval(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: _resetGameIngles,
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Colors.blue, // Define a nova cor do botão
                                padding: const EdgeInsets.all(5),
                              ),
                              child: const Icon(Icons.autorenew,
                                  size: 50, color: Colors.white),
                            ),
                            Text(
                              '$_secondsRemaining',
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'lib/assets/moedas.png'), // Substitua pelo caminho correto da sua imagem
                  fit:
                      BoxFit.cover, // Ajusta a imagem para cobrir todo o espaço
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ' ${formatarNumero(_pontosIngles)}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 22.0,
                      fontStyle: FontStyle.italic,
                      color: Color.fromARGB(255, 6, 6, 6),
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Icon(
                    Icons.diamond,
                    color: Color.fromARGB(255, 228, 5, 235),
                  ),
                  const SizedBox(width: 5),
                  const Icon(
                    Icons.diamond,
                    color: Color.fromARGB(255, 30, 152, 8),
                  ),
                  const SizedBox(width: 5),
                  const Icon(
                    Icons.diamond,
                    color: Color.fromARGB(255, 245, 18, 2),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 300,
              child: LinearProgressIndicator(
                value: _progressValueInglesAcerto, // Define o valor do progresso
                backgroundColor: Colors.grey,
                valueColor: const AlwaysStoppedAnimation<Color>(
                    Colors.green), // Cor do progresso
                minHeight: 7,
              ),
            ),
            const SizedBox(height: 5),
            SizedBox(
              width: 300,
              child: LinearProgressIndicator(
                value: _progressValueInglesErro, // Define o valor do progresso
                backgroundColor: Colors.grey,
                valueColor: const AlwaysStoppedAnimation<Color>(
                    Colors.red), // Cor do progresso
                minHeight: 7,
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: double.infinity,

                // Defina a cor de fundo desejada aqui
                child: Card(
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Center(
                      // Envolve o Text com um Center widget
                      child: Text(
                        quizFases[_currentFaseIndexIngles]
                            .perguntas[_currentQuestionIndexIngles]
                            .question,
                        style:
                            const TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            ...quizFases[_currentFaseIndexIngles]
                .perguntas[_currentQuestionIndexIngles]
                .answers
                .map((answer) {
              final answerIndex = quizFases[_currentFaseIndexIngles]
                  .perguntas[_currentQuestionIndexIngles]
                  .answers
                  .indexOf(answer);
              return SizedBox(
                width: 300, // Set your desired width for the buttons
                child: ElevatedButton(
                  onPressed: () => _handleAnswer(answerIndex),
                  child: Text(
                    answer,
                    style: const TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              );
            }).toList(),
            const SizedBox(height: 5),
            Align(
              alignment: Alignment.center,
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                height: _isVisible ? 100.0 : 0.0,
                child: Center(
                    child: Text(
                  ' ${quizFases[_currentFaseIndexIngles].perguntas[_currentQuestionIndexIngles].correctAnswer}',
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                )),
              ),
            ),
            const SizedBox(height: 5),
             SizedBox(
          height: 50,
          child: AdWidget(ad: bannerAd),
        ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    _confettiController.dispose();
    _confettiControllerAcertou.dispose();
    super.dispose();
    bannerAd.dispose();
  }

  String formatarNumero(int pontosIngles) {
    String numeroFormatado = pontosIngles.toString();
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
}


//         Wrap(
//  alignment: WrapAlignment.center, // Alinhamento das linhas
//  spacing: 1, // Espaçamento horizontal entre as imagens
//  runSpacing: 1, // Espaçamento vertical entre as linhas
//  children: List.generate(
//    _currentFaseIndexIngles + 9, // Adicione +1 para exibir o número correto de estrelas
//    (index) => const Image(
//      image: AssetImage('lib/assets/trofeu.png'),
//      width: 100,
//      height: 60,
//    ),
//  ),
//  // Define quantas imagens devem ser exibidas por linha
//  
//),