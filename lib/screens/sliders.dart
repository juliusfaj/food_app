import 'package:flutter/material.dart';

class AppSliders extends StatelessWidget {
  AppSliders({Key? key}) : super(key: key);

  List<String> popularImages = [
    "images/pizza-5991179_1920.png",
    "images/pizza-5991179_1920.png",
    "images/pizza-5991179_1920.png",
    "images/pizza-5991179_1920.png"
  ];

  List<String> popularPizza = [
    "Cheese pizza",
    "Pine pizza",
    "Amala pizza",
    "Semo pizza"
  ];

  List<String> popularPizzaSubText = [
    "cheese layers",
    "fruit layers",
    "elubo layers",
    "semo layers"
  ];

  List<double> prices = [2.99, 3.99, 4.99, 5.99];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Popular this week',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
            ),
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(right: 8.0),
                  child: Text(
                    'View all',
                    style: TextStyle(
                      color: Colors.orangeAccent,
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Colors.orangeAccent,
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 200.0,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: popularImages.length,
              itemBuilder: (context, index) {
            return Column(
              children: [
                Text(popularPizza[index])
              ],
            );
          }),
        )
      ],
    );
  }
}
