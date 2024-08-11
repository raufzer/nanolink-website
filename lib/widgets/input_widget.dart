import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 480,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Colors.black, width: 2),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF8466FF).withOpacity(1),
                spreadRadius: 2,
                blurRadius: 0,
                offset: const Offset(20, 5),
              ),
            ],
          ),
        )
      ],
    );
  }
}
