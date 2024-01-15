import 'package:flutter/material.dart';
import 'package:jogomen/home.dart';

class CompraPage extends StatelessWidget {
  const CompraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atualize para Pro'),
         leading: IconButton(
          icon: const Icon(Icons.chevron_left ), // Ícone do botão esquerdo
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Atualize para a versão Pro',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Desbloqueie recursos incríveis:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            const FeatureList(),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // You can add your payment processing logic here
                // Once the purchase is successful, you can update user's access
                // to the Pro features in your app.
              },
              child: const Text('Indisponivel ainda.'),
            ),
          ],
        ),
      ),
    );
  }
}

class FeatureList extends StatelessWidget {
  const FeatureList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0), // Ajuste os valores conforme necessário
      child: FeatureItem(icon: Icons.check, text: 'Sem Propaganda'),
    ),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: FeatureItem(icon: Icons.emoji_events, text: 'Novas Fases'),
    ),
    Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: FeatureItem(icon: Icons.diamond, text: 'Libere Tudo '),
    ),
    // Adicione mais recursos, se necessário
  ],
    );
  }
}

class FeatureItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const FeatureItem({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.green, size: 20),
          const SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    title: 'Demonstração da versão Pro',
    home: CompraPage(),
  ));
}
