import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:votingapptest/votingwebpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Future<void> _launchWebURL() async {
    final Uri uri = Uri.parse('https://forms.gle/7MNdTmip1E5T1yKK9');

    if (!await launchUrl(uri, mode: LaunchMode.inAppWebView)) {
      throw Exception('Could not launch: https://forms.gle/7MNdTmip1E5T1yKK9');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                'StoneCircle App, Unilag Community',
                style: TextStyle(
                  fontFamily: 'Tahoma',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              //
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'Vote for Miss ULES',
                      style: TextStyle(
                        fontFamily: 'Tahoma',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    //
                    ElevatedButton(
                      onPressed: () {
                        _launchWebURL();
                      },
                      child: Text(
                        'Click here to vote',
                        style: TextStyle(fontFamily: 'Tahoma', fontSize: 14),
                      ),
                    ),
                    //
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return CustomeWebPageScreen(
                                url: 'https://forms.gle/7MNdTmip1E5T1yKK9',
                              );
                            },
                          ),
                        );
                      },
                      child: Text(
                        'Click here to vote: Custom Page',
                        style: TextStyle(fontFamily: 'Tahoma', fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
