import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 35.0, horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon:const  Icon(Icons.list),
                    iconSize: 35.0,
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
                      iconSize: 35.0)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                    color: Colors.orange.shade100,
                    height: 200.0,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Fastest",
                                style: TextStyle(
                                    fontSize: 30.0, fontWeight: FontWeight.w500),
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
                                padding:  const EdgeInsets.only(top: 10.0),
                                child: ElevatedButton(
                                    onPressed: () {},

                                    child:  const Row(
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
            )
          ],
        ),
      ),
    );
  }
}
