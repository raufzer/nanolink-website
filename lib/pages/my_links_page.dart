import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nanolink_website/widgets/link_input_section_home.dart';
import 'package:nanolink_website/widgets/link_input_section_shortned.dart';
import 'package:nanolink_website/widgets/links_input_section_mylinks.dart';
import 'package:nanolink_website/widgets/primary_button.dart';
import 'package:nanolink_website/widgets/secondary_button_fill.dart';
import 'package:nanolink_website/widgets/secondary_button_outlined.dart';

class MyLinksPage extends StatelessWidget {
  const MyLinksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 200,
            ),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/elements.png')),
              ),
            ),
          ),
          Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                        child: Positioned(
                          child: Image.asset('assets/images/NanoLinkLogo.png'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 80),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Center(
                            child: Positioned(
                              child: RichText(
                                text: TextSpan(
                                  text: 'Shorten your',
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      color: Color(0xFF1F2937),
                                    ),
                                    fontSize: 56,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: ' links ',
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          color: Color(0xFF651FFF),
                                        ),
                                        fontSize: 56,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'quickly with us.',
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          color: Color(0xFF1F2937),
                                        ),
                                        fontSize: 56,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Center(
                            child: Positioned(
                              child: SizedBox(
                                width: 780,
                                child: Text(
                                  textAlign: TextAlign.center,
                                  'Links shortened with NanoLink are automatically saved and reliably stored for free, ensuring they’re always ready to use.',
                                  style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                      color: Color(0xFF5C5F6E),
                                    ),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 63,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF1A284E),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                children: [
                                  Center(
                                    child: Positioned(
                                      child: RichText(
                                        text: TextSpan(
                                          text: 'Copyright © NanoLink LLC  ',
                                          style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                              color: Color(0xFF8290A1),
                                            ),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20,
                                          ),
                                          children: <TextSpan>[
                                            TextSpan(
                                              text:
                                                  ' •  Terms  •  Privacy Policy  •  Accessibility  •',
                                              style: GoogleFonts.poppins(
                                                textStyle: const TextStyle(
                                                  color: Color(0xFF8290A1),
                                                ),
                                                fontWeight: FontWeight.w400,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
                width: 600,
              ),
              Center(child: MyLinksWidget()),
              SizedBox(
                height: 30,
              ),
              LargeButton(text: 'Shorten URL')
            ],
          )
        ],
      ),
    );
  }
}
