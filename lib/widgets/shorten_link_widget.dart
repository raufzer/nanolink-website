import 'package:flutter/material.dart';
import 'package:nanolink_website/widgets/input_title_widget.dart';
import 'package:nanolink_website/widgets/input_widget.dart';

class ShortenLinkWidget extends StatelessWidget {
  const ShortenLinkWidget({super.key});

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
      child: const Column(
        children: [
          InputTitleWidget(
              title: 'Enter The link:',
              icon: 'assets/icons/enter_link_icon.svg'),
          InputWidget()
        ],
      ),
    );
  }
}
