import 'package:flutter/material.dart';
import 'package:jogomen/home.dart';
import 'package:jogomen/politica.dart';
//import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    title: 'Quiz App',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const Manualpage(),
  ));
}

class Manualpage extends StatefulWidget {
  const Manualpage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ManualpageState createState() => _ManualpageState();
}

class _ManualpageState extends State<Manualpage> {

  @override
  void initState() {
    super.initState();
    
  }

  

//  Future<void> _clearData() async {
//    SharedPreferences prefs = await SharedPreferences.getInstance();
//    await prefs.clear();
//    setState(() {
//    });
//  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Como Jogar'),
         leading: IconButton(
        icon: const Icon(Icons.chevron_left),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const Homepage(),
            ),
          );
        },
      ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Bem-vindo ao PenC!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Instruções:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'O desafio consiste em responder corretamente as perguntas em cada fase.',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 8),
            const Text(
              'Você terá um tempo de 60 segundos para responder cada pergunta. Caso o tempo se esgote, a pergunta será considerada errada e o cronômetro será zerado.',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 8),
            const Text(
              'Cada vez que você completa uma fase respondendo corretamente a todas as perguntas, você receberá um troféu.',
              style: TextStyle(fontSize: 14),
            ),
           
            const SizedBox(height: 8),
            const Text(
              'Entrou no jogo criando sua conta pode convidar um amigo para jogar online com você ver quem acertas mais.',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 10),

             const Text(
              'Como jogar com outro jogador online.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
             const Text(
              'Para jogar online com outro jogador deve criar sua conta depois na tela inicial no icone trofeu na parte de baixo clicar vai encontar uma lista de jogadores, escolha com que quer jogar e outro jogador deve escolher voce, assim podem jogar juntos respondendo mesma perguntas acompanhando erros e acertos um do outro.',
              style: TextStyle(fontSize: 14),
            ),
           
            const SizedBox(height: 6),
                   
              IconButton(
                icon: const Icon(Icons.receipt, size: 30, color: Colors.amber),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PrivacyPolicyPage(),
                    ),
                  );
                },
              ),
       //     const SizedBox(height: 10),
       //     ElevatedButton(
       //       onPressed: _clearData,
       //       child: const Text('Limpar Dados'),
       //     ),
          ],
          
        ),
        
      ),
      
    );
  }
}

