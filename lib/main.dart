import 'package:flutter/material.dart';
import 'package:nanolink_website/pages/home_page.dart';

void main() {
  runApp(const NanoLinkWebsite());
}

class NanoLinkWebsite extends StatelessWidget {
  const NanoLinkWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'NanoLink',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
