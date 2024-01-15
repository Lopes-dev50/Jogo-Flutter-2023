import 'package:flutter/material.dart';
import 'package:jogomen/compratilhar.dart';

import 'compra.dart';
import 'manual.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  //Size get preferredSize => const Size.fromHeight(40); 
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leading: IconButton(
        icon: const Icon(Icons.device_unknown ),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>  const Manualpage(),
            ),
          );
        },
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.hub),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const Compartilharpage(),
              ),
            );
          },
        ),
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const CompraPage(),
              ),
            );
          },
        ),
      ],
    );
  }
}
