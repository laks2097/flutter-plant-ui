import 'package:flutter/material.dart';
import 'package:plant_ui/Screens/detailviewscreen.dart';

class PlantTiles extends StatelessWidget {
  final String plantImageTag;
  final String plantImage;
  final String plantName;
  final String plantDescription;
  final String plantPrice;
  final Color plantBg;
  final String reviews;

  PlantTiles({
    Key? key,
    required this.plantImageTag,
    required this.plantImage,
    required this.plantName,
    required this.plantDescription,
    required this.plantPrice,
    required this.plantBg,
    required this.reviews,
  }) : super(key: key);

  List<BoxShadow> listShadow = [
    BoxShadow(
      color: Colors.grey.shade300,
      blurRadius: 30,
      offset: Offset(0, 10),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("hhhsahashsa" + plantName);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailViewScreen(
              imageTag: plantImageTag,
              plantImage: plantImage,
              plantName: plantName,
              plantDescription: plantDescription,
              plantPrice: plantPrice,
              plantBg: plantBg,
              reviews: reviews,
            ),
          ),
        );
      },
      child: Container(
        height: 240,
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: plantBg,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: listShadow,
                    ),
                    margin: EdgeInsets.only(top: 30),
                  ),
                  Align(
                    child: Hero(
                        tag: plantImageTag, child: Image.asset(plantImage)),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 45, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 15.0),
                      child: Text(
                        plantName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 15.0),
                      child: Text(
                        plantDescription,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade400,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 12.0, left: 15.0, right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            plantPrice,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF73BA9B),
                              fontSize: 18.0,
                            ),
                          ),
                          Text(reviews + "+ Reviews",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade400,
                                fontSize: 12.0,
                              )),
                        ],
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: listShadow,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
