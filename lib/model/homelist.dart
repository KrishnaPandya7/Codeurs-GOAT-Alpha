
import 'package:flutter/widgets.dart';

import '../fitness_app/fitness_app_home_screen.dart';

class HomeList {
  HomeList({
    this.navigateScreen,
    this.imagePath = '',
  });

  Widget? navigateScreen;
  String imagePath;

  static List<HomeList> homeList = [
    
    HomeList(
      imagePath: 'assets/fitness_app/fitness_app.png',
      navigateScreen: FitnessAppHomeScreen(),
    ),
    
  ];
}
