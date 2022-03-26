import 'package:flutter/material.dart';
import 'package:rajproject/questionwidget.dart';

import 'greyarea.dart';

class SurveyAnswer extends StatefulWidget {
  const SurveyAnswer({Key? key}) : super(key: key);

  @override
  State<SurveyAnswer> createState() => _SurveyAnswerState();
}

class _SurveyAnswerState extends State<SurveyAnswer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GreyBox(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text('Filter'),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),
                      Text("dropdown"),
                      Text("dropdown"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              onPressed: () {}, child: const Text("Go")),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) => const QuestionText()),
            ],
          ),
        ),
      ),
    );
  }
}
