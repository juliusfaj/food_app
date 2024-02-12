import 'package:flutter/cupertino.dart';
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

  List<String> popularPizzaPrice = [
    "\$2.99",
    "\$3.99",
    "\$4.99",
    "\$5.99",
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
                  padding: EdgeInsets.only(right: 8.0),
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
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: SizedBox(
            height: 270.0,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: popularImages.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Container(
                          width: 183.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 5.0,
                              color: Colors.grey.withOpacity(0.1),
                            ),
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                popularImages[index],
                                width: 150.0,
                              ),
                              Text(
                                popularPizza[index],
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 1.0, bottom: 10.0),
                                child: Text(
                                  popularPizzaSubText[index],
                                  style: TextStyle(
                                      fontSize: 15.0, color: Colors.grey),
                                ),
                              ),
                              Text(
                                popularPizzaPrice[index],
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                }),
          ),
        )
      ],
    );
  }
}
