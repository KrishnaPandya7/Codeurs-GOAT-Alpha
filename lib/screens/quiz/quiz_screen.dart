import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healup/screens/quiz/home_screen.dart';
import 'package:healup/widgets/ans.dart';
// import '../../fitness_app/fitness_app_home_screen.dart';

enum SingingCharacter { zero, one, two, three }

class QuizScreen extends StatefulWidget {
  QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  SingingCharacter? _character = SingingCharacter.zero;
  int optionAns = 0;
  int index = 0;
  int score = 0;
  List questionList = [
    {
      "id": 1,
      "question": "Little interest or pleasure in doing things",
      "options": ['0', '1', '2', '3'],
    },
    {
      "id": 2,
      "question": "Feeling down, depressed, or hopeless ",
      "options": ['0', '1', '2', '3'],
    },
    {
      "id": 3,
      "question": "Trouble falling or staying asleep, or sleeping too much ",
      "options": ['0', '1', '2', '3'],
    },
    {
      "id": 4,
      "question": "Feeling tired or having little energy ",
      "options": ['0', '1', '2', '3'],
    },
    {
      "id": 5,
      "question": "Poor appetite or overeating ",
      "options": ['0', '1', '2', '3'],
    },
    {
      "id": 6,
      "question":
          "Feeling bad about yourself or that you are a failure or have let yourself or your family down ",
      "options": ['0', '1', '2', '3'],
    },
    {
      "id": 7,
      "question":
          "Trouble concentrating on things, such as reading the newspaper or watching television",
      "options": ['0', '1', '2', '3'],
    },
    {
      "id": 8,
      "question":
          "Moving or speaking so slowly that other people could have noticed. Or the opposite being so figety or restless that you have been moving around a lot more than usual",
      "options": ['0', '1', '2', '3'],
    },
    {
      "id": 9,
      "question":
          "Thoughts that you would be better off dead, or of hurting yourself",
      "options": ['0', '1', '2', '3'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 235, 204, 246),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Text(
              "${score}",
            ),
            Ans(
                text:
                    "Q${questionList[index]['id']}. ${questionList[index]['question']}"
                //  "Q. " +
                //     questionList[index]['id'] +
                //     questionList[index]['question'],
                ),
            ListTile(
              title: const Text("0"),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.zero,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                    optionAns = 0;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text("1"),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.one,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    optionAns = 1;
                    _character = value;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text("2"),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.two,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                    optionAns = 2;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text("3"),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.three,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    optionAns = 3;
                    _character = value;
                  });
                },
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // SizedBox.fromSize(
                //       size: const Size.fromRadius(150),
                //       child: Image.asset(
                //       'assets/fitness_app/phq9.png'),
                // ),
                TextButton(
                  onPressed: () {
                    if (questionList[index]['id'] == 9) {
                      setState(() {
                        score += optionAns;
                      });
                      Get.off(HomeScreen(score: score));
                    } else {
                      setState(() {
                        score += optionAns;
                        index += 1;
                      });
                    }
                  },
                  child: const Text(
                    "NEXT",
                    style: TextStyle(fontSize: 25),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
