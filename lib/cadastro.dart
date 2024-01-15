import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'checagem.dart';

class CadastroUsuarioPage extends StatefulWidget {
  const CadastroUsuarioPage({super.key});

  @override
  State<CadastroUsuarioPage> createState() => _CadastroUsuarioPageState();
}

class _CadastroUsuarioPageState extends State<CadastroUsuarioPage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _firebaseAuth = FirebaseAuth.instance;
  bool _verSenha = false;
  int randomNumber = Random().nextInt(900) + 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criar Conta'),
      ),
      
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          TextFormField(
            controller: _nameController,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              label: Text('Nome de jogador'),
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              label: Text('e-mail'),
              hintText: 'nome@email',
              border: OutlineInputBorder(),
            ),
            validator: (email) {
              if (email == null || email.isEmpty) {
                return 'Digite seu e-mail';
              }
              return null;
            },
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: _passwordController,
            keyboardType: TextInputType.visiblePassword,
            obscureText: !_verSenha,
            decoration: InputDecoration(
                label: const Text('senha'),
                hintText: 'Digite sua senha',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(_verSenha
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined),
                  onPressed: () {
                    setState(() {
                      _verSenha = !_verSenha;
                    });
                  },
                )),
            validator: (senha) {
              if (senha == null || senha.isEmpty) {
                return 'Digite sua senha';
              } else if (senha.length < 6) {
                return 'Digite uma senha maior ';
              }
              return null;
            },
          ),
          const SizedBox(height: 18),
          ElevatedButton(
              onPressed: () {
                cadastrar();
              },
              child: const Text('Cadastrar'))
        ],
      ),
    );
  }

  cadastrar() async {
    try {
      UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
              email: _emailController.text, password: _passwordController.text);
      // Adicionar detalhes do usuário ao Firestore
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userCredential.user!.uid)
          .set({
        'pontos': 0,
        'jogador': '${_nameController.text}$randomNumber',
        'pontosonline': 0,
        'fase':0,
        // Outros campos, se necessário
      });
      // ignore: unnecessary_null_comparison
      if (userCredential != null) {
        userCredential.user!.updateDisplayName(_nameController.text);
        // ignore: use_build_context_synchronously
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const ChecagemPage(),
            ),
            (route) => false);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Criar senha mais forte '),
          backgroundColor: Colors.redAccent,
        ));
      } else if (e.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Email já em uso '),
          backgroundColor: Colors.redAccent,
        ));
      }
    }
  }
}
