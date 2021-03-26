import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plant_ui/Configs/configs.dart';
import 'package:plant_ui/Utility/plantTiles.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;
  Random random = new Random();

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor)
        ..rotateY(isDrawerOpen ? -0.5 : 0),
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 0.0)),
      child: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              // height: 50.0,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isDrawerOpen
                      ? IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            setState(() {
                              xOffset = 0;
                              yOffset = 0;
                              scaleFactor = 1;
                              isDrawerOpen = false;
                            });
                          },
                        )
                      : IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {
                            setState(() {
                              xOffset = 220;
                              yOffset = 120;
                              scaleFactor = 0.7;
                              isDrawerOpen = true;
                            });
                          }),
                  Column(
                    children: [
                      Text('Location'),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: kcAccentColor,
                          ),
                          Text('New Delhi'),
                        ],
                      ),
                    ],
                  ),
                  CircleAvatar(
                    foregroundImage: ExactAssetImage("images/immadollgal.jpeg"),
                  )
                ],
              ),
            ),
            Container(
              // height: 80.0,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.search),
                  Text('Search for any plant'),
                  Icon(Icons.settings)
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.only(bottom: 15.0, left: 20.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Select a Category",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                )),
            Container(
              height: 75.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: filters.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.symmetric(horizontal: 25),
                          decoration: BoxDecoration(
                              color: (index == 0)
                                  ? kcSelectionColor
                                  : Colors.white,
                              boxShadow: listShadow,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: FaIcon(
                              filters[index]['filter_icon'],
                              color: (index == 0)
                                  ? kcAnotherBgColor
                                  : Colors.grey[700],
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              filters[index]['name'],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: plants.length,
                itemBuilder: (context, index) {
                  return PlantTiles(
                    plantImageTag: "img" + index.toString(),
                    plantImage: plants[index]['plant_image'],
                    plantName: plants[index]['plant_name'],
                    plantDescription: plants[index]['plant_description'],
                    plantPrice: plants[index]['plant_price'],
                    plantBg: plants[index]['plant_bg'],
                    reviews: random.nextInt(10000).toString(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
