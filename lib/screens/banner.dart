import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_app/screens/sliders.dart';

class AppBanner extends StatelessWidget {
  AppBanner({Key? key}) : super(key: key);

  List<String> categories = ["Pizza", "Burger", "Sushi", "Noodles"];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
              top: 40.0, left: 10.0, right: 10.0, bottom: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.list),
                iconSize: 30.0,
              ),
              Text(
                "11tal, intertap road ^",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.red.shade500),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.settings),
                  iconSize: 30.0)
            ],
          ),
        ), //app bar padding

        Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  color: Colors.orange.shade100,
                  height: 200.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Fastest",
                                style: TextStyle(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w500),
                              ),
                              const Text.rich(TextSpan(
                                  text: "Food",
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 18.0),
                                  children: [
                                    TextSpan(
                                      text: " Delivery",
                                      style: TextStyle(color: Colors.black),
                                    )
                                  ])),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.red,
                                        foregroundColor: Colors.white,
                                        alignment: Alignment.centerLeft),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Icon(Icons.location_on),
                                        Text("Location on")
                                      ],
                                    )),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            child: Image.asset("images/pizza-5991179_1920.png"))
                      ],
                    ),
                  ),
                ),
              ),
            )), // Banner padding

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Categories',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SizedBox(
                  height: 50.0,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: ElevatedButton.icon(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red.shade500,
                                foregroundColor: Colors.white,
                              ),
                              icon: const Icon(Icons.local_pizza),
                              label: Text(categories[index])),
                        );
                      }),
                ),
              )
            ],
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
          child: AppSliders(),
        ),

        Spacer(),
        BottomAppBar(
          color: Colors.red.shade500,
          height: 20.0,

          child: Row(
            children: [
              Text('funnso ')
            ],
          ),
        )
      ],
    );
  }
}
