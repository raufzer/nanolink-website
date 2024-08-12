import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallButtonOutlined extends StatelessWidget {
  const SmallButtonOutlined({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 48,
          width: 175,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xFF263238), width: 2),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: text,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Color(0xFF263238),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
            ],
          ),
        )
      ],
    );
  }
}
