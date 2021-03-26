import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color kcBackgroundColor = Color(0xFFBCD4DE);
Color kcAccentColor = Color(0xFF73BA9B);
Color kcSecondaryColor = Color(0xFFA5CCD1);
Color kcSecondaryAccent = Color(0xFFA0B9BF);
Color kcAnotherBgColor = Colors.orange.shade100;
Color kcSelectionColor = Colors.blueGrey;
Color kcBg3Color = Colors.yellow.shade200;
Color kcBg4Color = Colors.pink.shade50;
Color kcActiveColor = Colors.green.shade400;
Color kcDrawerBg = Colors.blueGrey.shade900;

List<BoxShadow> listShadow = [
  BoxShadow(
    color: Colors.grey.shade300,
    blurRadius: 30,
    offset: Offset(0, 10),
  )
];

List<Map> filters = [
  {"name": "Plants", "filter_icon": FontAwesomeIcons.leaf},
  {"name": "Seedlings", "filter_icon": FontAwesomeIcons.seedling},
  {"name": "Vegetable", "filter_icon": FontAwesomeIcons.carrot},
  {"name": "Fruit", "filter_icon": FontAwesomeIcons.appleAlt},
];

List<Map> drawerItems = [
  {'drawer_icon': FontAwesomeIcons.spa, 'title': 'Explore'},
  {'drawer_icon': FontAwesomeIcons.home, 'title': 'Nursery'},
  {'drawer_icon': FontAwesomeIcons.glasses, 'title': 'Read'},
  {'drawer_icon': FontAwesomeIcons.ribbon, 'title': 'Donate'},
  {'drawer_icon': Icons.info, 'title': "About"}
];

List<Map> plants = [
  {
    'plant_image': 'images/plant1.png',
    'plant_name': 'Eucalyptus',
    'plant_description':
        'Fast Growth, The leaves are leathery and often hang obliquely or vertically.',
    'plant_price': '\$ 3.99',
    'plant_bg': kcSecondaryColor
  },
  {
    'plant_image': 'images/plant2.png',
    'plant_name': 'Cape Jasmine',
    'plant_description':
        'Evergreen flowering plant of coffee family. Also commonly known as Gardenia.',
    'plant_price': '\$ 2.99',
    'plant_bg': kcAnotherBgColor
  },
  {
    'plant_image': 'images/plant3.png',
    'plant_name': 'Pothos',
    'plant_description':
        'Also known as "cubicle plant". Its trailing vines can grow to over 10 feet long.',
    'plant_price': '\$ 4.99',
    'plant_bg': kcBg3Color
  },
  {
    'plant_image': 'images/plant4.png',
    'plant_name': 'Dracaena',
    'plant_description':
        'Easy going, low-maintenance plant. It can easily adapt to different light environments',
    'plant_price': '\$ 5.99',
    'plant_bg': kcBg4Color
  },
];
