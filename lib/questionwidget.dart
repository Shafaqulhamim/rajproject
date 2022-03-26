import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionText extends StatefulWidget {
  const QuestionText({Key? key}) : super(key: key);

  @override
  State<QuestionText> createState() => _QuestionTextState();
}

class _QuestionTextState extends State<QuestionText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Question 1 Good one",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 15),
            child: ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: const Text(
                        "Option 1 ",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                      ),
                    )),
          )
        ],
      ),
    );
  }
}
