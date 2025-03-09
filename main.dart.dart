import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            Container(
              alignment: Alignment.bottomRight,
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("esra.jpg"),
                  fit: BoxFit.cover,
                ),
                color: Colors.blueAccent,
              ),
              child: Container(
                margin: EdgeInsets.all(10),
                width: 130,
                height: 40,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.camera_enhance, color: Colors.white),
                  label: Text('Gallery', style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black.withOpacity(
                      0.5,
                    ), // Button color
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                ),
              ),
            ),

            Container(
              //الكبير
              //alignment: Alignment.centerRight,
              margin: EdgeInsets.all(10),
              height: 200,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    offset: Offset(4, 4),
                    spreadRadius: 2,
                    blurRadius: 1,
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                /* boxShadow: [
                  BoxShadow(
                    blurRadius: 3,
                    spreadRadius: 1,
                    offset: Offset(0, 1),
                  ),
                ],*/
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Oeschinen Lake Campground",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 229, 169, 164),
                          ),
                          height: 25,
                          width: 45,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Row(
                              children: [
                                Text(
                                  "4.1",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(Icons.star, size: 15, color: Colors.red),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_pin, color: Colors.red),
                        Text("Kandersteg, Switzerland"),
                      ],
                    ),
                    Divider(color: Colors.grey, thickness: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 50, // Adjust size
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(
                              0.1,
                            ), // Light background
                            shape: BoxShape.circle, // Makes it circular
                          ),
                          child: const Icon(
                            Icons.phone,
                            color: Colors.blue, // Icon color
                            size: 20, // Icon size
                          ),
                        ),
                        Container(
                          width: 50, // Adjust size
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(
                              255,
                              148,
                              221,
                              150,
                            ).withOpacity(0.1), // Light background
                            shape: BoxShape.circle, // Makes it circular
                          ),
                          child: const Icon(
                            Icons.near_me,
                            color: Color.fromARGB(
                              255,
                              148,
                              221,
                              150,
                            ), // Icon color
                            size: 20, // Icon size
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.purple.withOpacity(0.1),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.share,
                            color: Colors.purple,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "call",
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        ),
                        Text(
                          "Route",
                          style: TextStyle(
                            color: Colors.greenAccent,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "share",
                          style: TextStyle(color: Colors.purple, fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ElevatedButton.icon(
                onPressed: () {},
                label: Text(
                  "About",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                icon: Icon(Icons.info_outline),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(150, 45),
                  iconColor: Colors.white,
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.3),

                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        spacing: 10,
                        children: [
                          Icon(Icons.loyalty, color: Colors.blue),
                          Text(
                            "1,578m above sea level",
                            style: TextStyle(fontSize: 20, color: Colors.blue),
                          ),
                        ],
                      ),
                      Text(
                        "Lake Oeschinen lies at the loot of the Bluemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kander teg, followed by a half-hour walk through pastures and pine forest",
                        style: TextStyle(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.bookmark_border),
        ),
      ),
    );
  }
}
