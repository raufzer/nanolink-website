import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EnterLinkButton extends StatelessWidget {
  const EnterLinkButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 45,
          width: 350,
          decoration: BoxDecoration(
            color: const Color(0xFF651FFF),
            borderRadius: BorderRadius.circular(12),
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
                    color: Colors.white,
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
