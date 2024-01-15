import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class JogoOnlinePage extends StatefulWidget {
  final String jogador;

  const JogoOnlinePage({Key? key, required this.jogador}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _JogoOnlinePageState createState() => _JogoOnlinePageState();
}

class _JogoOnlinePageState extends State<JogoOnlinePage> {
  late Stream<QuerySnapshot<Map<String, dynamic>>> playerStream;

  @override
  void initState() {
    super.initState();
    playerStream = FirebaseFirestore.instance
        .collection('users')
        .where('jogador', isEqualTo: widget.jogador)
        .snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dados do Jogador'),
      ),
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: playerStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }
          if (snapshot.hasError) {
            return Text('Erro: ${snapshot.error}');
          }
          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return const Text('Nenhum dado encontrado.');
          }

          final playerData = snapshot.data!.docs[0].data();
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Nome do jogador: ${playerData['jogador']}'),
              Text('Pontos: ${playerData['pontos']}'),
              // Outras informações do jogador...
            ],
          );
        },
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: JogoOnlinePage(jogador: 'NomeDoJogador'),
  ));
}
