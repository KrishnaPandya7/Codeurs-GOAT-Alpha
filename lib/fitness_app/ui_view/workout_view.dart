import 'package:flutter/material.dart';
import '../fitness_app_theme.dart';

class WorkoutView extends StatelessWidget {
  final AnimationController? animationController;
  final Animation<double>? animation;

  const WorkoutView({Key? key, this.animationController, this.animation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController!,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: animation!,
          child: Transform(
            transform: Matrix4.translationValues(
                0.0, 30 * (1.0 - animation!.value), 0.0),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 24, right: 24, top: 16, bottom: 18),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 131, 66, 236),
                    Color.fromARGB(255, 79, 60, 91), // Second color added
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                    bottomRight: Radius.circular(8.0),
                    topRight: Radius.circular(68.0),
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: FitnessAppTheme.grey,
                      offset: Offset(1.1, 1.1),
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Quote of the day',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: FitnessAppTheme.fontName,
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          letterSpacing: 0.0,
                          color: FitnessAppTheme.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          ''' "i was once depresed"
                           - Virat Kholi''',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: FitnessAppTheme.fontName,
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            letterSpacing: 0.0,
                            color: Color.fromARGB(255, 250, 250, 250),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 4),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
