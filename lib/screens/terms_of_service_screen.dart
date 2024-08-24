import 'package:flutter/material.dart';

class TermsOfServiceScreen extends StatelessWidget {
  const TermsOfServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms of Service'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Terms of Service',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Please read these terms of service carefully before using our app.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              '1. Acceptance of Terms\n\n'
              'By accessing or using our app, you agree to be bound by these Terms of Service. '
              'If you do not agree to all the terms and conditions, then you may not access the app.\n\n'
              '2. Use of the App\n\n'
              'You agree to use the app only for lawful purposes and in a way that does not infringe '
              'the rights of, restrict or inhibit anyone else\'s use and enjoyment of the app.\n\n'
              '3. Intellectual Property\n\n'
              'The content, organization, graphics, design, compilation, magnetic translation, digital '
              'conversion and other matters related to the app are protected under applicable copyrights, '
              'trademarks and other proprietary rights.\n\n'
              '4. Disclaimer of Warranties\n\n'
              'The app is provided "as is" without any representations or warranties, express or implied.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
