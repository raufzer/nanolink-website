import 'package:flutter/material.dart';
import 'package:nanolink_website/widgets/input_title.dart';
import 'package:nanolink_website/widgets/text_input_field.dart';
import 'package:nanolink_website/widgets/short_input_field.dart';

class LinkInputHome extends StatefulWidget {
  LinkInputHome({super.key});
  final TextEditingController _longLinkController = TextEditingController();
  @override
  State<LinkInputHome> createState() => _LinkInputHomeState();

  static of(BuildContext context) {}
}

class _LinkInputHomeState extends State<LinkInputHome> {
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
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 30),
                InputTitleWidget(
                    title: 'Enter The link:',
                    icon: 'assets/icons/enter_link_icon.svg'),
              ],
            ),
            const SizedBox(height: 10),
            InputWidget(
              controller: widget._longLinkController, // Use the controller
              hintText: 'Enter Long Link here ',
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 30),
                InputTitleWidget(
                    title: 'Customize your link:',
                    icon: 'assets/icons/customize_link_icon.svg'),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
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
