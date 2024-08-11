import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            padding: const EdgeInsets.all(20.0),
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
                                text: const TextSpan(
                                  text: 'Shorten your',
                                  style: TextStyle(
                                    fontFamily: 'Poppins-Bold',
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF1F2937),
                                    fontSize: 56,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: ' links ',
                                      style: TextStyle(
                                        fontFamily: 'Poppins-Bold',
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF651FFF),
                                        fontSize: 56,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'quickly with us.',
                                      style: TextStyle(
                                        fontFamily: 'Poppins-Bold',
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF1F2937),
                                        fontSize: 64,
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
                  const Row(
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
                                  style: TextStyle(
                                    fontFamily: 'Poppins-Regular',
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF5C5F6E),
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
                                        text: const TextSpan(
                                          text: 'Copyright © NanoLink LLC  ',
                                          style: TextStyle(
                                            fontFamily: 'Poppins-Regular',
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF8290A1),
                                            fontSize: 20,
                                          ),
                                          children: <TextSpan>[
                                            TextSpan(
                                              text:
                                                  ' •  Terms  •  Privacy Policy  •  Accessibility  •',
                                              style: TextStyle(
                                                fontFamily: 'Poppins-Regular',
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFF8290A1),
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
          )
        ],
      ),
    );
  }
}
