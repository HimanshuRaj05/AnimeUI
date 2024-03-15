import 'package:flutter/material.dart';

class AnimeTile extends StatelessWidget {
  final String imagePath;
  const AnimeTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
       
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(imagePath, fit: BoxFit.cover,)),
      ),
    );
  }
}
