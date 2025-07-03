import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/colors.dart';
import 'package:portfolio_website/widgets/contact_form.dart';
import 'package:portfolio_website/widgets/custom_background_contianer.dart';
import 'package:portfolio_website/widgets/lable_contact_widget.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CustomBackgroundContianer(
      color: Colors.white10,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 80),
        child: Row(
          children: [
            Expanded(
              child: Container(
                width: size.width * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12
                          .withOpacity(0.1), // Shadow color with opacity
                      spreadRadius: 2,
                      blurRadius: 2, // How blurry the shadow is
                      offset: Offset(
                          0, 5), // Move shadow horizontally and vertically
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 30),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 15,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 42),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ShaderMask(
                              blendMode: BlendMode.srcIn,
                              shaderCallback: (bounds) => const LinearGradient(
                                colors: [
                                  Colors.blue,
                                  Colors.purple,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ).createShader(
                                Rect.fromLTWH(
                                    0, 0, bounds.width, bounds.height),
                              ),
                              child: Text(
                                'Let\'s work together!',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 50,
                                    ),
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(
                              'I design and code beautifully simple things and i love what i do. Just simple like that!,\n',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.blueGrey[800],
                                    fontSize: 18,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 42, vertical: 15),
                        child: ContactForm(),
                      ),
                      Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 40,
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(170, 50),
                              backgroundColor: MyColor.purple,
                              foregroundColor: MyColor.scaffold,
                            ),
                            child: const Text('Send Message'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 170,
            ),
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconWithLabelWidget(
                    title: 'Phone',
                    value: '01062407085',
                    icon: Icons.phone,
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  IconWithLabelWidget(
                    title: 'Email',
                    value: 'mohamed.mostaf432100@gmail.com',
                    icon: Icons.email_outlined,
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  IconWithLabelWidget(
                    title: 'Address',
                    value: 'Abo Bakr Street Pine,FL 33157, Miniya',
                    icon: Icons.location_on,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
