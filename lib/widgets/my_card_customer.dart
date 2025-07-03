import 'package:flutter/material.dart';

class MyCardCustomer extends StatelessWidget {
  const MyCardCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0), color: Colors.white),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://media.istockphoto.com/photos/headshot-of-cheerful-handsome-man-with-trendy-haircut-and-eyeglasses-picture-id1171169127?b=1&k=20&m=1171169127&s=170667a&w=0&h=EhnDHqf3YPp71FK23x_ZyFPhMLKCk_ZyNchiPE93ESw=')),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                  '“Taylor is a professional\n'
                  'Designer he really helps my\n'
                  'business by providing value to \n'
                  'my business. ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
              SizedBox(
                height: 45,
              ),
              Text('Tim Bailey',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
              SizedBox(
                height: 4,
              ),
              Text('Senior Software Dev, Cosmic Sport'),
              
            ],
          ),
        ),
      ),
    );
  }
}
