import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Question 1',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                )),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Answer 3'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Answer 4'),
            ),
          ],
        ),
      ),
    );
  }
}
