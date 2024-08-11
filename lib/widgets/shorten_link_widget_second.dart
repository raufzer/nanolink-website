import 'package:flutter/material.dart';
import 'package:nanolink_website/widgets/icon_button.dart';
import 'package:nanolink_website/widgets/input_title_widget.dart';
import 'package:nanolink_website/widgets/input_widget.dart';

class ShortenLinkWidgetSecond extends StatelessWidget {
  const ShortenLinkWidgetSecond({super.key});

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
                    title: 'NanoLink:',
                    icon: 'assets/icons/nano_link_icon.svg'),
              ],
            ),
            SizedBox(height: 10),
            InputWidget(
              hintText: 'yourlinkalias.com ',
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 60),
                ButtonIcon(text: 'Copy', icon: 'assets/icons/copy_icon.svg'),
                SizedBox(width: 30),
                ButtonIcon(text: 'Share', icon: 'assets/icons/share_icon.svg'),
                SizedBox(width: 30),
                ButtonIcon(text: 'Visit', icon: 'assets/icons/visit_icon.svg'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
