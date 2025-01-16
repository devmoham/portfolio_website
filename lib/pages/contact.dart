import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/colors.dart';
import 'package:portfolio_website/widgets/lable_contact_widget.dart';
import 'package:portfolio_website/widgets/text_field_widget.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 900,
      width: double.maxFinite,
      color: Colors.white10,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 250),
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12
                          .withOpacity(0.1), // Shadow color with opacity
                      spreadRadius: 2, // How much the shadow spreads
                      blurRadius: 2, // How blurry the shadow is
                      offset: Offset(
                          0, 5), // Move shadow horizontally and vertically
                    ),
                  ],
                  borderRadius: BorderRadius.circular(16.0),
                  color: Colors.white),
              height: 700,
              width: 600,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
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
                              Rect.fromLTWH(0, 0, bounds.width, bounds.height),
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
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.blueGrey[800],
                                      fontSize: 18,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    const TextFieldWidget(
                      width: 250,
                      hintText: 'First name',
                    ),
                    const TextFieldWidget(
                      width: 250,
                      hintText: 'Last name',
                    ),
                    const TextFieldWidget(
                      width: 250,
                      hintText: 'Email address',
                    ),
                    const TextFieldWidget(
                      width: 250,
                      hintText: 'Phone number',
                    ),
                    const TextFieldWidget(
                      width: 515,
                      hintText: '-Please chose an option-',
                    ),
                    const TextFieldWidget(
                      height: 200,
                      isMessage: true,
                      width: 515,
                      hintText: 'Message',
                    ),
                    Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Padding(
                        padding: EdgeInsets.only(left: 40, top: 15),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Send Message'),
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(170, 50),
                            backgroundColor: MyColor.purple,
                            foregroundColor: MyColor.scaffold,
                          ),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconWithLabelWidget(
                title: 'Phone',
                value: '01062407085',
                icon: Icons.phone,
              ),
              const SizedBox(
                height: 35,
              ),
              IconWithLabelWidget(
                title: 'Email',
                value: 'mohamed.mostaf432100@gmail.com',
                icon: Icons.email_outlined,
              ),
              const SizedBox(
                height: 35,
              ),
              IconWithLabelWidget(
                title: 'Address',
                value: 'Abo Bakr Street Pine,FL 33157, Miniya',
                icon: Icons.location_on,
              ),
            ],
          )
        ],
      ),
    );
  }
}
