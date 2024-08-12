import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputLinksWidget extends StatelessWidget {
  const InputLinksWidget({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 320,
          width: 500,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Color(0xFF8290A1),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  contentPadding: const EdgeInsets.only(left: 16.0),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
