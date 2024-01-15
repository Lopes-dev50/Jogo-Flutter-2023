import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Compartilharpage(),
    );
  }
}

class Compartilharpage extends StatelessWidget {
  const Compartilharpage({super.key});

  void _shareApp() {
    const String text = 'Confira este incrível aplicativo!';

    // Você pode adicionar um link para a loja do aplicativo ou site aqui, se desejar
    const String appLink = 'https://seu-link-aqui.com';

    const String shareText = '$text\n$appLink';

    Clipboard.setData(const ClipboardData(text: appLink)); // Copiar link para a área de transferência

    Share.share(shareText); // Compartilhar o texto com outros aplicativos
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Compartilhar o App'),
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
              'Compartilhe o aplicativo com seus amigos!',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _shareApp,
              child: const Text('Compartilhar'),
            ),
          ],
        ),
      ),
    );
  }
}
