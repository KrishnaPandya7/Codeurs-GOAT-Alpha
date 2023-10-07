import 'package:flutter/material.dart';

import '../fitness_app_theme.dart';

class BodyMeasurementView extends StatelessWidget {
  final AnimationController? animationController;
  final Animation<double>? animation;

  const BodyMeasurementView(
      {Key? key, this.animationController, this.animation})
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
                        decoration: BoxDecoration(
                          color: FitnessAppTheme.white,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8.0),
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                              topRight: Radius.circular(68.0)),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: FitnessAppTheme.grey.withOpacity(0.2),
                                offset: Offset(1.1, 1.1),
                                blurRadius: 10.0),
                          ],
                        ),
                        child: Column(children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 16, left: 16, right: 24),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                // ignore: prefer_const_constructors
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 4, bottom: 8, top: 16),
                                  // ignore: prefer_const_constructors
                                  child: Text(
                                    'ICall National Helpline Number',
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        fontFamily: FitnessAppTheme.fontName,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        letterSpacing: -0.1,
                                        color: FitnessAppTheme.darkText),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 4, bottom: 3),
                                          child: Text(
                                            '9152987821',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily:
                                                  FitnessAppTheme.fontName,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 20,
                                              color: FitnessAppTheme
                                                  .nearlyDarkBlue,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 8, bottom: 8),
                                          child: Text(
                                            ':)',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily:
                                                  FitnessAppTheme.fontName,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18,
                                              letterSpacing: -0.2,
                                              color: FitnessAppTheme
                                                  .nearlyDarkBlue,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              Icons.access_time,
                                              color: const Color.fromARGB(
                                                      255, 0, 153, 255)
                                                  .withOpacity(0.5),
                                              size: 16,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 4.0),
                                              child: Text(
                                                'Contact us',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily:
                                                      FitnessAppTheme.fontName,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14,
                                                  letterSpacing: 0.0,
                                                  color: Color.fromARGB(
                                                          255, 241, 8, 8)
                                                      .withOpacity(0.5),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              top: 4, bottom: 14),
                                          child: Text(
                                            'GOV OF INDIA',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily:
                                                  FitnessAppTheme.fontName,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 8,
                                              letterSpacing: 0.0,
                                              color: FitnessAppTheme
                                                  .nearlyDarkBlue,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 24, right: 24, top: 8, bottom: 8),
                            child: Container(
                              height: 2,
                              decoration: const BoxDecoration(
                                color: FitnessAppTheme.background,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4.0)),
                              ),
                            ),
                          ),
                        ])))));
      },
    );
  }
}
