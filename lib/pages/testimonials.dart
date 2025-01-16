import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TestimonialsPage extends StatefulWidget {
  const TestimonialsPage({super.key});

  @override
  State<TestimonialsPage> createState() => _TestimonialsPageState();
}

class _TestimonialsPageState extends State<TestimonialsPage> {
  List<String> carouselList = [
    'assets/images/carousel/one.png',
    'assets/images/carousel/two.png',
    'assets/images/carousel/three.png',
    'assets/images/carousel/four.png',
  ];

  final CarouselSliderController _controller = CarouselSliderController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: double.maxFinite,
      color: MyColor.scaffold,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 350, top: 160),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
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
                    'My Client\'s Stories',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                        ),
                  ),
                ),
                Text(
                  'Empowering people in new a digital journey with my super services',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.normal,
                        color: Colors.blueGrey[800],
                        fontSize: 18,
                      ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 100,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 400,
                width: 550,
                child: CarouselSlider.builder(
                  carouselController: _controller,
                  itemCount: 4,
                  itemBuilder: (context, index, realIndex) {
                    return Container(
                      height: 350,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: Colors.white),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17)),
                            SizedBox(
                              height: 45,
                            ),
                            Text('Tim Bailey',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17)),
                            SizedBox(
                              height: 4,
                            ),
                            Text('Senior Software Dev, Cosmic Sport'),
                          ],
                        ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                    viewportFraction: 0.5,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    },
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 18 / 8,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: AnimatedSmoothIndicator(
                  activeIndex: _current,
                  count: 4,
                  effect: const WormEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    spacing: 16,
                    dotColor: Colors.black26,
                    activeDotColor: Colors.deepPurple,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
