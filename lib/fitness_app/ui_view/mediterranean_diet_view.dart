import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:url_launcher/url_launcher.dart';

import '../fitness_app_theme.dart';

final Uri _url =
    Uri.parse('https://www.who.int/health-topics/mental-health#tab=tab_1');
Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

class MediterranesnDietView extends StatelessWidget {
  final AnimationController? animationController;
  final Animation<double>? animation;

  const MediterranesnDietView(
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
              child: InkWell(
                onTap: _launchUrl,
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
                          offset: const Offset(1.1, 1.1),
                          blurRadius: 10.0),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 0, left: 16, right: 16),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, right: 8, top: 0),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          height: 50,
                                          width: 2,
                                          decoration: const BoxDecoration(
                                            // color: HexColor('#87A0E5')
                                            //     .withOpacity(0.5),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4.0)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        const SizedBox(
                                          height: 48,
                                          width: 32,
                                          // decoration: const BoxDecoration(
                                          //     // color: HexColor('#F56E98')
                                          //     //     .withOpacity(0.5),
                                          //     // borderRadius: BorderRadius.all(
                                          //     //     Radius.circular(4.0)),
                                          //     ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: SizedBox(
                                                      width: 210,
                                                      height: 200,
                                                      child: Image.asset(
                                                          "assets/fitness_app/WHO.png"),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 24, right: 24, top: 8, bottom: 8),
                        child: Container(
                          height: 2,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 49, 65, 145),
                            borderRadius:
                                BorderRadius.all(Radius.circular(4.0)),
                          ),
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 24, right: 24, top: 15, bottom: 25),
                        child: const Row(
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'WANNA KNOW WHAT WHO HAS TO SAY ABOUT MENTAL HEALTH?',
                                    textAlign: TextAlign.center,
                                    //               style: TextStyle(
                                    //                 fontFamily: FitnessAppTheme.fontName,
                                    //                 fontWeight: FontWeight.w500,
                                    //                 fontSize: 16,
                                    //                 letterSpacing: -0.2,
                                    //                 color: FitnessAppTheme.darkText,
                                    //               ),
                                    //             ),
                                    //             Padding(
                                    //               padding: const EdgeInsets.only(top: 4),
                                    //               child: Container(
                                    //                 height: 4,
                                    //                 width: 70,
                                    //                 decoration: const BoxDecoration(
                                    //                   // color:
                                    //                       // HexColor('#87A0E5').withOpacity(0.2),
                                    //                   borderRadius: BorderRadius.all(
                                    //                       Radius.circular(4.0)),
                                    //                 ),
                                    //                 child: Row(
                                    //                   children: <Widget>[
                                    //                     Container(
                                    //                       width: ((70 / 1.2) * animation!.value),
                                    //                       height: 4,
                                    //                       decoration: const BoxDecoration(
                                    //                         // gradient: LinearGradient(colors: [
                                    //                         //   HexColor('#87A0E5'),
                                    //                         //   HexColor('#87A0E5')
                                    //                         //       .withOpacity(0.5),
                                    //                         // ]),
                                    //                         borderRadius: BorderRadius.all(
                                    //                             Radius.circular(4.0)),
                                    //                       ),
                                    //                     )
                                    //                   ],
                                    //                 ),
                                    //               ),
                                    //             ),
                                    //             Padding(
                                    //               padding: const EdgeInsets.only(top: 6),
                                    //               child: Text(
                                    //                 '12g left',
                                    //                 textAlign: TextAlign.center,
                                    //                 style: TextStyle(
                                    //                   fontFamily: FitnessAppTheme.fontName,
                                    //                   fontWeight: FontWeight.w600,
                                    //                   fontSize: 12,
                                    //                   color:
                                    //                       FitnessAppTheme.grey.withOpacity(0.5),
                                    //                 ),
                                    //               ),
                                    //             ),
                                    //           ],
                                    //         ),
                                    //       ),
                                    //       Expanded(
                                    //         child: Row(
                                    //           mainAxisAlignment: MainAxisAlignment.center,
                                    //           crossAxisAlignment: CrossAxisAlignment.center,
                                    //           children: <Widget>[
                                    //             Column(
                                    //               mainAxisAlignment: MainAxisAlignment.center,
                                    //               crossAxisAlignment: CrossAxisAlignment.start,
                                    //               children: <Widget>[
                                    //                 const Text(
                                    //                   'Protein',
                                    //                   textAlign: TextAlign.center,
                                    //                   style: TextStyle(
                                    //                     fontFamily: FitnessAppTheme.fontName,
                                    //                     fontWeight: FontWeight.w500,
                                    //                     fontSize: 16,
                                    //                     letterSpacing: -0.2,
                                    //                     color: FitnessAppTheme.darkText,
                                    //                   ),
                                    //                 ),
                                    //                 Padding(
                                    //                   padding: const EdgeInsets.only(top: 4),
                                    //                   child: Container(
                                    //                     height: 4,
                                    //                     width: 70,
                                    //                     decoration: const BoxDecoration(
                                    //                       // color: HexColor('#F56E98')
                                    //                       //     .withOpacity(0.2),
                                    //                       borderRadius: BorderRadius.all(
                                    //                           Radius.circular(4.0)),
                                    //                     ),
                                    //                     child: Row(
                                    //                       children: <Widget>[
                                    //                         Container(
                                    //                           width: ((70 / 2) *
                                    //                               animationController!.value),
                                    //                           height: 4,
                                    //                           decoration: const BoxDecoration(
                                    //                             // gradient:
                                    //                             //     LinearGradient(colors: [
                                    //                             //   HexColor('#F56E98')
                                    //                             //       .withOpacity(0.1),
                                    //                             //   HexColor('#F56E98'),
                                    //                             // ]),
                                    //                             borderRadius: BorderRadius.all(
                                    //                                 Radius.circular(4.0)),
                                    //                           ),
                                    //                         ),
                                    //                       ],
                                    //                     ),
                                    //                   ),
                                    //                 ),
                                    //                 Padding(
                                    //                   padding: const EdgeInsets.only(top: 6),
                                    //                   child: Text(
                                    //                     '30g left',
                                    //                     textAlign: TextAlign.center,
                                    //                     style: TextStyle(
                                    //                       fontFamily: FitnessAppTheme.fontName,
                                    //                       fontWeight: FontWeight.w600,
                                    //                       fontSize: 12,
                                    //                       color: FitnessAppTheme.grey
                                    //                           .withOpacity(0.5),
                                    //                     ),
                                    //                   ),
                                    //                 ),
                                    //               ],
                                    //             ),
                                    //           ],
                                    //         ),
                                    //       ),
                                    //       Expanded(
                                    //         child: Row(
                                    //           mainAxisAlignment: MainAxisAlignment.end,
                                    //           crossAxisAlignment: CrossAxisAlignment.center,
                                    //           children: <Widget>[
                                    //             Column(
                                    //               mainAxisAlignment: MainAxisAlignment.center,
                                    //               crossAxisAlignment: CrossAxisAlignment.start,
                                    //               children: <Widget>[
                                    //                 const Text(
                                    //                   'Fat',
                                    //                   style: TextStyle(
                                    //                     fontFamily: FitnessAppTheme.fontName,
                                    //                     fontWeight: FontWeight.w500,
                                    //                     fontSize: 16,
                                    //                     letterSpacing: -0.2,
                                    //                     color: FitnessAppTheme.darkText,
                                    //                   ),
                                    //                 ),
                                    //                 Padding(
                                    //                   padding: const EdgeInsets.only(
                                    //                       right: 0, top: 4),
                                    //                   child: Container(
                                    //                     height: 4,
                                    //                     width: 70,
                                    //                     decoration: const BoxDecoration(
                                    //                       // color: HexColor('#F1B440')
                                    //                           // .withOpacity(0.2),
                                    //                       borderRadius: BorderRadius.all(
                                    //                           const Radius.circular(4.0)),
                                    //                     ),
                                    //                     child: Row(
                                    //                       children: <Widget>[
                                    //                         Container(
                                    //                           width: ((70 / 2.5) *
                                    //                               animationController!.value),
                                    //                           height: 4,
                                    //                           decoration: const BoxDecoration(
                                    //                             // gradient:
                                    //                             //     LinearGradient(colors: [
                                    //                             //   HexColor('#F1B440')
                                    //                             //       .withOpacity(0.1),
                                    //                             //   HexColor('#F1B440'),
                                    //                             // ]),
                                    //                             borderRadius: BorderRadius.all(
                                    //                                 Radius.circular(4.0)),
                                    //                           ),
                                    //                         ),
                                    //                       ],
                                    //                     ),
                                    //                   ),
                                    //                 ),
                                    //                 Padding(
                                    //                   padding: const EdgeInsets.only(top: 6),
                                    //                   child: Text(
                                    //                     '10g left',
                                    //                     textAlign: TextAlign.center,
                                    //                     style: TextStyle(
                                    //                       fontFamily: FitnessAppTheme.fontName,
                                    //                       fontWeight: FontWeight.w600,
                                    //                       fontSize: 12,
                                    //                       color: FitnessAppTheme.grey
                                    //                           .withOpacity(0.5),
                                    //                     ),
                                    //                   ),
                                    //                 ),
                                    // ],
                                  ),
                                ],
                              ),
                            )
                          ],
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

class CurvePainter extends CustomPainter {
  final double? angle;
  final List<Color>? colors;

  CurvePainter({this.colors, this.angle = 140});

  @override
  void paint(Canvas canvas, Size size) {
    List<Color> colorsList = [];
    if (colors != null) {
      colorsList = colors ?? [];
    } else {
      colorsList.addAll([Colors.white, Colors.white]);
    }

    final shdowPaint = Paint()
      ..color = Colors.black.withOpacity(0.4)
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 14;
    final shdowPaintCenter = Offset(size.width / 2, size.height / 2);
    final shdowPaintRadius =
        math.min(size.width / 2, size.height / 2) - (14 / 2);
    canvas.drawArc(
        Rect.fromCircle(center: shdowPaintCenter, radius: shdowPaintRadius),
        degreeToRadians(278),
        degreeToRadians(360 - (365 - angle!)),
        false,
        shdowPaint);

    shdowPaint.color = Colors.grey.withOpacity(0.3);
    shdowPaint.strokeWidth = 16;
    canvas.drawArc(
        Rect.fromCircle(center: shdowPaintCenter, radius: shdowPaintRadius),
        degreeToRadians(278),
        degreeToRadians(360 - (365 - angle!)),
        false,
        shdowPaint);

    shdowPaint.color = Colors.grey.withOpacity(0.2);
    shdowPaint.strokeWidth = 20;
    canvas.drawArc(
        Rect.fromCircle(center: shdowPaintCenter, radius: shdowPaintRadius),
        degreeToRadians(278),
        degreeToRadians(360 - (365 - angle!)),
        false,
        shdowPaint);

    shdowPaint.color = Colors.grey.withOpacity(0.1);
    shdowPaint.strokeWidth = 22;
    canvas.drawArc(
        Rect.fromCircle(center: shdowPaintCenter, radius: shdowPaintRadius),
        degreeToRadians(278),
        degreeToRadians(360 - (365 - angle!)),
        false,
        shdowPaint);

    final rect = Rect.fromLTWH(0.0, 0.0, size.width, size.width);
    final gradient = SweepGradient(
      startAngle: degreeToRadians(268),
      endAngle: degreeToRadians(270.0 + 360),
      tileMode: TileMode.repeated,
      colors: colorsList,
    );
    final paint = Paint()
      ..shader = gradient.createShader(rect)
      ..strokeCap = StrokeCap.round // StrokeCap.round is not recommended.
      ..style = PaintingStyle.stroke
      ..strokeWidth = 14;
    final center = Offset(size.width / 2, size.height / 2);
    final radius = math.min(size.width / 2, size.height / 2) - (14 / 2);

    canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        degreeToRadians(278),
        degreeToRadians(360 - (365 - angle!)),
        false,
        paint);

    // ignore: prefer_const_declarations
    final gradient1 = const SweepGradient(
      tileMode: TileMode.repeated,
      colors: [Colors.white, Colors.white],
    );

    var cPaint = Paint();
    cPaint.shader = gradient1.createShader(rect);
    cPaint.color = Colors.white;
    cPaint.strokeWidth = 14 / 2;
    canvas.save();

    final centerToCircle = size.width / 2;
    canvas.save();

    canvas.translate(centerToCircle, centerToCircle);
    canvas.rotate(degreeToRadians(angle! + 2));

    canvas.save();
    canvas.translate(0.0, -centerToCircle + 14 / 2);
    canvas.drawCircle(const Offset(0, 0), 14 / 5, cPaint);

    canvas.restore();
    canvas.restore();
    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  double degreeToRadians(double degree) {
    var redian = (math.pi / 180) * degree;
    return redian;
  }
}
