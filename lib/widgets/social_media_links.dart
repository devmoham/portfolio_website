import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaLinks extends StatefulWidget {
  const SocialMediaLinks({super.key});

  @override
  State<SocialMediaLinks> createState() => _SocialMediaLinksState();
}

class _SocialMediaLinksState extends State<SocialMediaLinks> {
  final Map<String, Uri> _urls = {
    'LinkedIn':
        Uri.parse('https://www.linkedin.com/in/mohamed-mostafa-159969253/'),
    'GitHub': Uri.parse('https://github.com/devmoham'),
    'Facebook': Uri.parse(
        'https://www.facebook.com/profile.php?id=100083573418366&mibextid=ZbWKwL'),
  };

  Future<void> _launchUrl(String key) async {
    final Uri? url = _urls[key];
    if (url != null && !await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Row(
            children: const [
              Text('Download CV'),
              SizedBox(
                width: 8,
              ),
              Icon(Icons.file_download_outlined)
            ],
          ),
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(170, 40),
            backgroundColor: MyColor.purple,
            foregroundColor: MyColor.scaffold,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Row(
          children: [
            InkWell(
              onTap: () => _launchUrl('Facebook'),
              child: const CircleAvatar(
                backgroundColor: MyColor.purple,
                child: Icon(
                  Icons.facebook_sharp,
                  size: 30,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () => _launchUrl('LinkedIn'),
              child: CircleAvatar(
                  backgroundColor: MyColor.purple,
                  child: Image.asset(
                    'assets/images/icons8-linkedin-64.png',
                    width: 30,
                    height: 35,
                  )),
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () => _launchUrl('GitHub'),
              child: CircleAvatar(
                  backgroundColor: MyColor.purple,
                  child: Image.asset(
                    'assets/images/icons8-github-48.png',
                    width: 30,
                    height: 30,
                  )),
            ),
          ],
        ),
      ],
    );
  }
}
