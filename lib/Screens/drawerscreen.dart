import 'package:flutter/material.dart';
import 'package:plant_ui/Configs/configs.dart';

class DrawerScreen extends StatefulWidget {
  DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kcDrawerBg,
      padding: EdgeInsets.only(top: 50, bottom: 70, left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 10.0,
              ),
              CircleAvatar(
                foregroundImage: ExactAssetImage("images/immadollgal.jpeg"),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Andrea Saltz',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text('Active',
                      style: TextStyle(
                        color: kcActiveColor,
                      )),
                ],
              )
            ],
          ),
          Column(
            children: drawerItems
                .map((element) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          print(element['title']);
                        },
                        child: Row(
                          children: [
                            Icon(
                              element['drawer_icon'],
                              color: Colors.white,
                              size: 25.0,
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              element['title'],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                          ],
                        ),
                      ),
                    ))
                .toList(),
          ),
          Row(
            children: [
              Icon(
                Icons.settings,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  print("Settings");
                },
                child: Text(
                  'Settings',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 2,
                height: 20,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  print("Log out");
                },
                child: Text(
                  'Log out',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
