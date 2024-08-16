import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:nanolink_website/pages/link_shortened_page.dart';
import 'dart:convert';
import 'package:nanolink_website/widgets/link_input_section_home.dart';

class ShortenLinkButton extends StatefulWidget {
  const ShortenLinkButton({super.key, required this.text});

  final String text;

  @override
  State<ShortenLinkButton> createState() => _ShortenLinkButton();
}

class _ShortenLinkButton extends State<ShortenLinkButton> {
  bool _isLoading = false;

Future<void> _shortenLink(String longLink) async {
  setState(() {
    _isLoading = true; // Show loading indicator
  });

  try {
    final response = await http.post(
      Uri.parse(
        'http://your-api-endpoint/shorten'), // Replace with your API endpoint
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'long_link': longLink,
      }),
    );

    if (response.statusCode == 200) {
      // Assuming you receive the shortened link in the response body
      final shortenedLink = jsonDecode(response.body)['shortened_link'];

      // Navigate to the LinkShortenedPage, passing the shortened link as an argument
      Navigator.push(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(
          builder: (context) => LinkShortnedPage(shortenedLink: shortenedLink),
        ),
      );
    } else {
      // Handle API error
      // ...
    }
  } catch (error) {
    // Handle network error
    // ...
  } finally {
    setState(() {
      _isLoading = false; // Ensure loading indicator is hidden
    });
  }
}


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 350,
      child: ElevatedButton(
        onPressed: _isLoading
            ? null
            : () => _shortenLink(
                LinkInputHome.of(context)!._longLinkController.text),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF651FFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        child: _isLoading
            ? const CircularProgressIndicator() // Show loading indicator
            : Text(
                widget.text,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
      ),
    );
  }
}
