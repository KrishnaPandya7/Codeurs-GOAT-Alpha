// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healup/screens/quiz/quiz_screen.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../fitness_app/fitness_app_home_screen.dart';

String getVideoUrlForPHQ9Score(int score) {
  if (score >= 0 && score <= 4) {
    return "https://youtu.be/RWWFIgAHg4w?feature=shared"; // None
  } else if (score >= 5 && score <= 9) {
    return "https://www.youtube.com/watch?v=hvSDbX790rI"; // Mild
  } else if (score >= 10 && score <= 14) {
    return "https://www.youtube.com/watch?v=MJlzBHbxDSk"; // Moderate
  } else if (score >= 15 && score <= 19) {
    return "https://www.youtube.com/watch?v=xhaV1UAuIqY"; // Moderately Severe
  } else if (score >= 20 && score <= 27) {
    return "https://www.youtube.com/watch?v=-U5dEdWouDY"; // Severe
  } else {
    // Handle invalid input or scores outside the specified range
    return "Invalid PHQ-9 score input";
  }
}

final Uri _url =
    Uri.parse('https://en.wikipedia.org/wiki/PHQ-9#Interpretation_of_results');
Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

class HomeScreen extends StatelessWidget {
  final int score;
  const HomeScreen({Key? key, this.score = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 204, 246),
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // ignore: prefer_const_constructors

          const SizedBox(
            child: InkWell(
              hoverColor: Color.fromARGB(255, 0, 4, 255),
              onTap: _launchUrl,
              child: Text(
                "Analyse",
                textScaleFactor: 5,
              ),
            ),
          ),
          const SizedBox(height: 40),
          Text(
            "Your score ${score}",
            style: const TextStyle(fontSize: 30),
          ),
          InkWell(
            onTap: () async {
              // Add your logic here to open the recommended video URL
              String videoUrl = getVideoUrlForPHQ9Score(score);

              if (await canLaunch(videoUrl)) {
                await launch(
                  videoUrl,
                  forceSafariVC: false, // Set this parameter to false
                  universalLinksOnly: true,
                );
              } else {
                // Handle the error, e.g., show an error message to the user
                print('Could not launch $videoUrl');

                // Open the URL in a web browser as a fallback
                await launch(
                  videoUrl,
                  forceSafariVC: false,
                  universalLinksOnly:
                      false, // Set this to false to open in a web browser
                );

                // Optionally, you can provide an alternative action here.
                // For example, show a dialog with an error message.
              }
            },
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color:
                    Colors.blue, // You can change the button's background color
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                "RECOMMENDED VIDEO",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white, // You can change the text color
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Get.off(() => QuizScreen());
            },
            child: const Text("Start quiz again"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.off(() => FitnessAppHomeScreen());
            },
            child: const Text("fitnessapp home"),
          ),
        ],
      ),
    );
  }
}
