import 'dart:async'; // Importa a biblioteca `async` para utilizar o Timer.
import 'dart:math'; // Importa a biblioteca `math` para utilizar a classe `Random`.
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../dados/forca.dart';
import '../home.dart';

void main() => runApp(const JogoDaForca());

class JogoDaForca extends StatelessWidget {
  const JogoDaForca({super.key}); // Construtor da classe JogoDaForca.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const JogoDaForcaPage(),
    );
  }
}

class JogoDaForcaPage extends StatefulWidget {
  const JogoDaForcaPage({super.key});

  // Classe que representa a página principal do jogo.
  @override
  // ignore: library_private_types_in_public_api
  _JogoDaForcaPageState createState() => _JogoDaForcaPageState();
}

class _JogoDaForcaPageState extends State<JogoDaForcaPage> {
  String selectedWord = ''; // Palavra selecionada para o jogo.
  List<String> guessedLetters = []; // Lista de letras já tentadas pelo jogador.
  int attempts = 10;
  bool firstLetterSelected = false;
  int currentLevel = 0; // Nível atual do jogo.
  int correctWordCount = 0;
  int incorrectWordCount = 0;
  double _progressValueForcaErro = 0.0;
  double _progressValueForcaCerto = 0.0;
  late ConfettiController _confettiController;
  late ConfettiController _confettiControllerAcertou;
  BuildContext? dialogContext;
  bool _isVisible = false;
  int _pontosForca = 0;
   final Random _random = Random();

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

  void barraPerguntaErrada() {
    if (_progressValueForcaErro < 1.0) {
      _progressValueForcaErro += 0.11;
      _showWidget();
    }
    if (_progressValueForcaErro > 1.0) {
       if (_pontosForca >= 200) {
        _pontosForca -= 200;
       
      }
      showDialog(
        context: context,
        builder: (BuildContext context) {
          dialogContext = context;
          return AlertDialog(
            content:
                _repetirfaseCard(), // inicia fase por ter mais erro que o permitido
          );
        },
      );
    }
  }

  void barraPerguntaCerta() {
    if (_progressValueForcaCerto < 1.0) {
      _progressValueForcaCerto += 0.01;
       _pontosForca += 500 + _random.nextInt(99);
    }
    if (_progressValueForcaCerto > 1.0) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          dialogContext = context;
          return AlertDialog(
            content: _proximaFaseCard(), // vai para proximafase
          );
        },
      );
    }
  }

  late SharedPreferences prefsforca;
  @override
  void initState() {
    // Método chamado quando o widget é inicializado.
    super.initState();
    selectRandomWord();
    _confettiController = ConfettiController();
    _confettiControllerAcertou = ConfettiController();
    initprefsforca();
  }

  // Adicione este método para inicializar o SharedPreferences
  void initprefsforca() async {
    prefsforca = await SharedPreferences.getInstance();
    currentLevel = prefsforca.getInt('currentLevel') ?? 0;
    _pontosForca = prefsforca.getInt('pontosForca') ?? 0;
    setState(() {});
  }

  void resetGame() {
    // Salva o número de acertos no SharedPreferences
    prefsforca.setInt('currentLevel', currentLevel);
    prefsforca.setInt('pontosForca', _pontosForca);
    // Reinicia o jogo para uma nova palavra e novas tentativas.
    setState(() {
      attempts = 10; // Reseta as tentativas disponíveis.
      guessedLetters.clear(); // Limpa a lista de letras já tentadas.
      selectRandomWord(); // Seleciona uma nova palavra aleatória.
      firstLetterSelected =
          false; // Reseta a variável de controle de primeira letra selecionada.
    });
  }

  late String selectedQuestion; // Adicione esta linha para declarar a variável

  String perguntaFase() {
    return selectedQuestion; // Retorna a pergunta aleatória selecionada.
  }

  String resposta() {
    return selectedWord; // Retorna a pergunta aleatória selecionada.
  }

  void selectRandomWord() {
    final words = wordLists[currentLevel];
    final random = Random();
    final randomIndex = random.nextInt(words.length);
    selectedQuestion =
        words[randomIndex]['pergunta']!; // Obtém a pergunta do índice aleatório
    selectedWord =
        words[randomIndex]['resposta']!; // Obtém a resposta correspondente
  }

  bool isAllLettersGuessed() {
    // Verifica se todas as letras da palavra foram adivinhadas pelo jogador.
    for (var letter in selectedWord.split('')) {
      if (!guessedLetters.contains(letter)) {
        return false;
      }
    }
    return true;
  }

  void guessLetter(String letter) {
    // Método chamado quando o jogador tenta adivinhar uma letra.
    setState(() {
      guessedLetters
          .add(letter); // Adiciona a letra às letras tentadas pelo jogador.
      if (!selectedWord.contains(letter)) {
        // Se a letra não está na palavra, decrementa as tentativas.
        attempts--;
      }
      if (!firstLetterSelected) {
        // Se ainda não foi selecionada a primeira letra, inicia o timer.
        firstLetterSelected = true;
      }
      if (isAllLettersGuessed()) {
        correctWordCount++;
        // Se todas as letras foram adivinhadas, o jogador acertou a palavra.
        _playConfettiAnimation();
        barraPerguntaCerta();
        if (correctWordCount >= 10 && currentLevel < 6) {
          // Se acertou 4 palavras e ainda não completou todos os níveis, avança para o próximo nível.
          currentLevel++;
          correctWordCount = 0;
          attempts = 10; // Reseta as tentativas para o novo nível.
        }

        resetGame(); // Reinicia o jogo para uma nova palavra.
      }
      if (attempts <= 0) {
        // Salva o número de acertos no SharedPreferences
        prefsforca.setInt('currentLevel', currentLevel);
        prefsforca.setInt('pontosForca', _pontosForca);
        // Se as tentativas acabaram, o jogador errou a palavra.
        incorrectWordCount++;
        barraPerguntaErrada();
        Future.delayed(const Duration(seconds: 3), () {
          resetGame();
        });
        // Reinicia o jogo para uma nova palavra.
      }
    });
  }

  // Função que lida com a conclusão de uma fase
  void _handlePhaseCompletion() {
    setState(() {
      _progressValueForcaCerto = 0.0;
      _progressValueForcaErro = 0.0;
      //misturar perguntas
      resetGame();
    });
    if (dialogContext != null) {
      Navigator.of(dialogContext!).pop();
    }
  }

  // Função que lida com a pontuação abaixo do limiar
  void _handleScoreBelowThreshold() {
    prefsforca.setInt('currentLevel', currentLevel);
     prefsforca.setInt('pontosForca', _pontosForca);
    // Reinicia o jogo para uma nova palavra e novas tentativas.
    setState(() {
      attempts = 10; // Reseta as tentativas disponíveis.
      guessedLetters.clear(); // Limpa a lista de letras já tentadas.
      selectRandomWord(); // Seleciona uma nova palavra aleatória.
      firstLetterSelected =
          false; // Reseta a variável de controle de primeira letra selecionada.
      _progressValueForcaCerto = 0.0;
      _progressValueForcaErro = 0.0;
    });
    if (dialogContext != null) {
      Navigator.of(dialogContext!).pop();
    }
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
              emissionFrequency: 0.05, // Frequência de emissão de confete
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
                  width: 230,
                  height: 180,
                ),
                Positioned(
                  top: 24, // Ajuste a posição vertical conforme necessário
                  child: Text(
                    (currentLevel + 1).toString(),
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
              onPressed: () async {
                // Chamado para disparar a animação de confete
                _confettiController.play();
                // Aguardar 5 segundos (5000 milissegundos)
                await Future.delayed(const Duration(seconds: 5));
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
            const SizedBox(height: 30),
            const Text(
              'Você não atingiu a pontuação mínima para avançar. A fase será reiniciada.',
              style: TextStyle(color: Colors.white, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            const Image(
              image: AssetImage('lib/assets/perdeu.png'),
              width: 230,
              height: 180,
            ),
            const SizedBox(height: 20),
            Text(
              getRandomPhrase(),
              style: const TextStyle(color: Colors.white, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
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
        'lib/assets/Forca.jpg'; // Replace with your image asset path
    return await rootBundle.load(assetPath);
  }

  @override
  Widget build(BuildContext context) {
    // Método responsável por construir a interface da página principal do jogo.

    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'lib/assets/Forca.jpg'), // Replace with your image asset path
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 50),
                Row(
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
                          emissionFrequency: 0.05,
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
                                (currentLevel).toString(),
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
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Colors.blue, // Define a nova cor do botão
                                  padding: const EdgeInsets.all(2),
                                ),
                                child: const Icon(Icons.autorenew,
                                    size: 60, color: Colors.white),
                              ),
                              Text(
                                ' $attempts',
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
                 Container(
              padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/assets/moedas.png'), // Substitua pelo caminho correto da sua imagem
                    fit: BoxFit.cover, // Ajusta a imagem para cobrir todo o espaço
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ' ${formatarNumero(_pontosForca)}',
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
               
                const SizedBox(height: 5),
                SizedBox(
                  width: 300,
                  child: LinearProgressIndicator(
                    value:
                        _progressValueForcaCerto, // Define o valor do progresso
                    backgroundColor: Colors.grey,
                    valueColor: const AlwaysStoppedAnimation<Color>(
                        Colors.green), // Cor do progresso
                    minHeight: 5,
                  ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: 300,
                  child: LinearProgressIndicator(
                    value:
                        _progressValueForcaErro, // Define o valor do progresso
                    backgroundColor: Colors.grey,
                    valueColor: const AlwaysStoppedAnimation<Color>(
                        Colors.red), // Cor do progresso
                    minHeight: 5,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        elevation: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: Center(
                            // Envolve o Text com um Center widget
                            child: Text(
                              ' ${perguntaFase()}',
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  ' ${getDisplayedWord()}', // Exibe a palavra em exibição (com as letras adivinhadas ou "_").
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    width: double.infinity,
                    height: double.infinity,
                    child: Wrap(
                      spacing: 6,
                      runSpacing: 6,
                      children: [
                        for (String letter
                            in 'ABCDEFGHIJKLMNOPQRSTUVWXYZÇÃÔÊ'.split(''))
                          if (!guessedLetters.contains(letter))
                            ElevatedButton(
                              onPressed: () => guessLetter(letter),
                              child: Text(
                                  letter), // Botões para selecionar as letras a serem adivinhadas.
                            ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    height: _isVisible ? 100.0 : 0.0,
                    child: Center(
                      child: Text(
                        ' ${resposta()}',
                        style:
                            const TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            )));
  }

  String getDisplayedWord() {
    // Método para obter a palavra exibida com as letras adivinhadas ou "_".
    return selectedWord
        .split('')
        .map((letter) => guessedLetters.contains(letter) ? letter : '_')
        .join(' ');
  }

  @override
  void dispose() {
    // Método chamado quando o widget é descartado.
    _confettiController.dispose();
    _confettiControllerAcertou.dispose();
    super.dispose();
  }

   String formatarNumero(int pontosForca) {
    String numeroFormatado = pontosForca.toString();
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
