import 'package:flutter/material.dart';
import 'package:managing_with_subscriptions/on_board/answer.dart';

// ignore: camel_case_types
class OnBoarding extends StatefulWidget {
  const OnBoarding({
    super.key,
  });

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

// ignore: camel_case_types
class _OnBoardingState extends State<OnBoarding> {
  PageController controller = PageController();
  int onLastPage = 0;
  List onboard = [
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 76.0, 16.0, 0),
          child: onBoard(
            image: const AssetImage(
              'assets/images/image 1.png',
            ),
            text: const Text(
              'Make Your Service\nManagement\nEasier',
              style: TextStyle(
                  height: 0,
                  color: Color.fromRGBO(30, 30, 30, 100),
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            text2: 'Be aware of your spending on services and\nsubscriptions',
          ),
        ),
      ],
    ),
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 76.0, 16.0, 0),
          child: onBoard(
            image: const AssetImage('assets/images/image2.png'),
            text: const Text(
              'Don\'t let your money\ngo to no one knows\nwhere',
              style: TextStyle(
                  height: 0,
                  color: Color.fromRGBO(30, 30, 30, 100),
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            text2:
                'Calculate your spending on services and\nsubscriptions months in advance',
          ),
        ),
      ],
    ),
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 76.0, 16.0, 0),
          child: onBoard(
            image: const AssetImage('assets/images/image.png'),
            text: const Text(
              'Don\'t miss payments\nand keep your\nrecords',
              style: TextStyle(
                  height: 0,
                  color: Color.fromRGBO(30, 30, 30, 100),
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            text2:
                'Don\'t be afraid to miss a charge, we will\nnotify you in advance',
          ),
        ),
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 48, 16.0, 27),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 1.5,
                    color: const Color.fromRGBO(31, 135, 210, 100),
                    width: 40,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    height: 1.5,
                    color: onLastPage >= 1
                        ? const Color.fromRGBO(31, 135, 210, 100)
                        : const Color.fromRGBO(212, 237, 255, 100),
                    width: 40,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 1.5,
                    color: onLastPage == 2
                        ? const Color.fromRGBO(31, 135, 210, 100)
                        : const Color.fromRGBO(212, 237, 255, 100),
                    width: 40,
                  ),
                ),
              ],
            ),
          ),
          PageView(
            controller: controller,
            onPageChanged: (index) {
              onLastPage = index;
              setState(() {});
            },
            children: List.generate(
              3,
              (index) => onboard[index],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: Container(
              alignment: const Alignment(0, 1),
              child: onLastPage == 2
                  ? NextButton(
                      color: const Color.fromRGBO(31, 135, 210, 100),
                      child: const Text(
                        'Start',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AnswerQuesion(),
                        ),
                      ),
                    )
                  : NextButton(
                      onTap: () {
                        controller.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      },
                      child: const Text(
                        'Next',
                        style: TextStyle(
                          color: Color.fromRGBO(31, 135, 210, 100),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class NextButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  Color? color;
  NextButton({
    super.key,
    required this.child,
    this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
          width: double.infinity,
          height: 49,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    color ?? const Color.fromRGBO(212, 237, 255, 100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: onTap,
              child: child)),
    );
  }
}

// ignore: must_be_immutable, camel_case_types
class onBoard extends StatelessWidget {
  AssetImage image;
  Widget text;
  String text2;
  onBoard({
    super.key,
    required this.image,
    required this.text,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: double.infinity, height: 120, child: text),
        const SizedBox(height: 32.0),
        Container(
          height: 207,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(image: image, fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        const SizedBox(height: 32.0),
        SizedBox(
          height: 46,
          child: Text(
            text2,
            style: const TextStyle(
              fontSize: 16.0,
              color: Color.fromRGBO(56, 56, 56, 100),
            ),
          ),
        ),
      ],
    );
  }
}
