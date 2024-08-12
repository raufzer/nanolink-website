import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stroke_text/stroke_text.dart';

class ButtonIcon extends StatelessWidget {
  const ButtonIcon({super.key, required this.text, required this.icon});
  final String text;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 38,
          width: 108,
          decoration: BoxDecoration(
            color: const Color(0xFF8466FF),
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Colors.black, width: 2),
          ),
          child: Row(
            children: [
              const SizedBox(width: 10),
              SvgPicture.asset('assets/icons/copy_icon.svg'),
              const SizedBox(width: 10),
              Flexible(
                child: StrokeText(
                  text: text,
                  textStyle: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  strokeColor: Colors.black, // Set stroke color to black
                  strokeWidth: 4.5,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
