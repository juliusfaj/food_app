import 'package:flutter/material.dart';
import 'package:practice_app/screens/banner.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            // leading: IconButton(
            //   onPressed: () {},
            //   icon: const Icon(Icons.list),
            //   iconSize: 30.0,
            // ),
            title: Text(
              "11tal, intertap road ^",
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.red.shade500),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.settings),
                  iconSize: 30.0)
            ],
          ),

          drawer: Drawer(

            child: ListView(
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Pizza Delivery",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  )
                ),

                ListTile(
                  leading: Icon(Icons.fastfood),
                  title: const Text("Fast Foods"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.local_pizza_outlined),
                  title: const Text("Pizza"),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.local_pizza),
                  title: const Text("Stained Pizza"),
                  onTap: () {},
                ),

                Padding(padding: EdgeInsets.all(20.0), child: Text('Shortcuts'),),

                ListTile(
                  leading: Icon(Icons.settings),
                  title: const Text("Settings"),
                  onTap: () {},
                ),

                ListTile(
                  leading: Icon(Icons.info),
                  title: const Text("About"),
                  onTap: () {},
                ),

                ListTile(
                  leading: Icon(Icons.category),
                  title: const Text("Categories"),
                  onTap: () {},
                ),


              ],
            ),
          ),

          body: AppBanner(),
      ),
    );
  }
}
