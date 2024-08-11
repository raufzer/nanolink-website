import 'package:flutter/material.dart';
import 'package:nanolink_website/widgets/input_title_widget.dart';
import 'package:nanolink_website/widgets/input_widget.dart';
import 'package:nanolink_website/widgets/input_widget_s.dart';

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
      child: const Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 30),
                InputTitleWidget(
                    title: 'Enter The link:',
                    icon: 'assets/icons/enter_link_icon.svg'),
              ],
            ),
            SizedBox(height: 10),
            InputWidget(
              hintText: 'Enter Long Link here ',
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 30),
                InputTitleWidget(
                    title: 'Customize your link:',
                    icon: 'assets/icons/customize_link_icon.svg'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 50),
                InputWidgetS(hintText: 'nanolink.com'),
                SizedBox(width: 40),
                InputWidgetS(hintText: 'Enter alias')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
