import 'package:flutter/material.dart';
import 'package:nanolink_website/widgets/text_links_input_field.dart';

class MyLinksWidget extends StatelessWidget {
  const MyLinksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 580,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: const Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            InputLinksWidget(
              hintText: 'your links will appear here',
            ),
          ],
        ),
      ),
    );
  }
}
