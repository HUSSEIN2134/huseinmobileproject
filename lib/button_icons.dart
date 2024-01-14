import 'package:flutter/material.dart';

class Squarephotos extends StatelessWidget {
  final String imagePath;

  const Squarephotos({super.key,
  required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey,

      ),
      child: Image.network(imagePath
      ,height: 40,),
    );
  }
}
