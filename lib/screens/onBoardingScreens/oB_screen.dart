import 'package:flutter/material.dart';
import 'package:diabecheck2/app_colors.dart';
import 'package:diabecheck2/screens/start_page.dart';
import 'package:diabecheck2/screens/onBoardingScreens/template.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ObScreen extends StatefulWidget {
  const ObScreen({super.key});

  @override
  State<ObScreen> createState() => _ObScreenState();
}

class _ObScreenState extends State<ObScreen> {
  PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              Template(
                imagePath: "assets/tracker_illustration.jpg",
                description: "Track your sugar levels effortlessly.",
              ),
              Template(
                imagePath: "assets/doctors_illustration.jpg",
                description: "Your partner in the diabetic journey.",
              ),
              Template(
                imagePath: "assets/community_illustration2.png",
                description: "Stay connected with care and community.",
              ),
            ],
          ),

          onLastPage
              ? GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return StartPage();
                      },
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment(0.77, -0.90),
                  child: const Text(
                    "Done",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ),
              )
              : GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return StartPage();
                      },
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment(0.77, -0.90),
                  child: const Text(
                    "skip",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ),
              ),

          Container(
            alignment: Alignment(-0.35, 0.75),
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    spacing: 8.0,
                    radius: 5.0,
                    dotWidth: 10.0,
                    dotHeight: 5.0,
                    strokeWidth: 1.5,
                    dotColor: const Color.fromARGB(255, 207, 213, 241),
                    activeDotColor: AppColors.darkBlue,
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    if (onLastPage) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return StartPage();
                          },
                        ),
                      );
                    } else {
                      _controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    }
                  },
                  child: Stack(
                    alignment: Alignment(0.1, 0),
                    children: [
                      Icon(Icons.circle, color: AppColors.darkBlue, size: 52),
                      Icon(
                        Icons.keyboard_arrow_right_sharp,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
