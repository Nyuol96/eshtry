import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class boardingmodel {
  final String image;
  final String title;
  final String body;

  boardingmodel({required this.image, required this.title, required this.body});
}

class splashScreen extends StatelessWidget {
  var boardContorller = PageController();
  List<boardingmodel> boarding = [
    boardingmodel(
        image: 'assets/CDD5A9CD-A97C-47CF-B556-01F465535556_1_201_a.jpeg',
        title: 'Boarding',
        body: 'Indicator 1'),
    boardingmodel(
        image: 'assets/CDD5A9CD-A97C-47CF-B556-01F465535556_1_201_a.jpeg',
        title: 'Boarding',
        body: 'Indicator 2'),
    boardingmodel(
        image: 'assets/CDD5A9CD-A97C-47CF-B556-01F465535556_1_201_a.jpeg',
        title: 'Boarding',
        body: 'Indicator 3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
            child: PageView.builder(
              physics: BouncingScrollPhysics(),
              controller: boardContorller,
              itemBuilder: ((context, index) =>
                  buildBoardingItem(boarding[index])),
              itemCount: boarding.length,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              SmoothPageIndicator(
                  controller: boardContorller,
                  effect: ExpandingDotsEffect(
                      dotColor: Colors.grey,
                      dotHeight: 10,
                      dotWidth: 10,
                      expansionFactor: 4,
                      spacing: 5.0),
                  count: boarding.length),
              Spacer(),
              FloatingActionButton(
                onPressed: () {
                  boardContorller.nextPage(
                      duration: Duration(milliseconds: 750),
                      curve: Curves.fastLinearToSlowEaseIn);
                },
                child: Icon(Icons.arrow_forward_ios),
              )
            ],
          )
        ]),
      ),
    );
  }

  Widget buildBoardingItem(boardingmodel model) => Column(
        children: [
          Expanded(
            child: Image.asset('${model.image}'),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            '${model.title}',
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.green[700]),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            '${model.body}',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.green[700]),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      );
}
