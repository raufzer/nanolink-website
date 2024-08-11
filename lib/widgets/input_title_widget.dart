import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class InputTitleWidget extends StatelessWidget {
  final String? title;
  final String? icon;

  const InputTitleWidget({super.key, this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SvgPicture.asset(icon!),
        TextField(
          controller: TextEditingController(text: title),
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              color: Color(0xFF263238),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
