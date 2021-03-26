import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:plant_ui/Configs/configs.dart';
import 'dart:math';

class DetailViewScreen extends StatelessWidget {
  final String imageTag;
  final String plantImage;
  final String plantName;
  final String plantDescription;
  final String plantPrice;
  final Color plantBg;
  final String reviews;

  const DetailViewScreen(
      {Key? key,
      required this.imageTag,
      required this.plantImage,
      required this.plantName,
      required this.plantDescription,
      required this.plantPrice,
      required this.plantBg,
      required this.reviews})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Random random = new Random();
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Column(
            children: [
              Expanded(
                child: Container(
                  color: plantBg,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 80.0, left: 10.0),
                    child: Text(plantDescription),
                  ),
                ),
              ),
            ],
          )),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  IconButton(
                      icon: Icon(Icons.share),
                      color: Colors.white,
                      onPressed: () {
                        print("share");
                      })
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Hero(
                  tag: imageTag,
                  child: Image.asset(
                    plantImage,
                    height: 350,
                  )),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 120,
              width: MediaQuery.of(context).size.width - 50,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: listShadow,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          plantName,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: kcSelectionColor),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        RatingBar.builder(
                          initialRating: random.nextInt(5).toDouble(),
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 16.0,
                          itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.teal.shade400,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          reviews + "+ Reviews",
                          style: TextStyle(color: Colors.grey, fontSize: 13.0),
                        ),
                      ],
                    ),
                    Text(
                      plantPrice,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF73BA9B),
                        fontSize: 24.0,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 120,
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 70,
                    decoration: BoxDecoration(
                        color: kcAccentColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: kcAccentColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Text(
                        'Buy',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            letterSpacing: 1.2),
                      )),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
