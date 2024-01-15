import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:jogomen/home.dart';
import 'package:jogomen/jogos/jogoonline.dart';

class RecordsPage extends StatefulWidget {
  const RecordsPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RecordsPageState createState() => _RecordsPageState();
}

class _RecordsPageState extends State<RecordsPage> {
  late Stream<QuerySnapshot<Map<String, dynamic>>> usersStream;

@override
void initState() {
  super.initState();
  usersStream = FirebaseFirestore.instance
      .collection('users')
      .orderBy('pontos', descending: true)
      .snapshots();
}

  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Jogadores'),
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
    body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: usersStream,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Center(child: Text('Erro ao buscar dados'));
        }

        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        final users = snapshot.data!.docs;

        return ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final recordData = users[index].data();
            final playerName = recordData['jogador'];
            final playerPoints = recordData['pontos'];

           return Container(
  margin: const EdgeInsets.all(4),
  decoration: BoxDecoration(
    color: Colors.white,
    border: Border.all(color: Colors.grey),
    borderRadius: BorderRadius.circular(10.0),
  ),
  child: Row(
    children: [
      Expanded(
        child: ListTile(
          leading: Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.emoji_events, color: Colors.amber, size: 33),
          ),
          title: Text(playerName, style: const TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text('Pontos: $playerPoints'),
        ),
      ),
      IconButton(
        icon: const Icon(Icons.connect_without_contact, size: 33, ),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>  JogoOnlinePage(jogador: playerName),
            ),
          );
        },
      ),
    ],
  ),
);

          },
        );
      },
    ),
  );
}


}
