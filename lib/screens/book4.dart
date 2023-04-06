import 'package:akatabo/components/buy_button.dart';
import 'package:flutter/material.dart';
import '../colors.dart';

class Book4 extends StatelessWidget {
  const Book4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: akataboWhite,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children:  [
          const Placeholder(
            fallbackHeight: 196.4,
          ),
          const Text("This is book four in the exciting series of Comprehensive Primary School Science Books. It is specifically written for use by Primary Four pupils as a course book. It is accompanied by a revision science work book four to guide the teachers, pupils and parents who help their children in their daily different learning tasks."),

          BuyButton(text: "Buy", onTap: (){})
        ]
      ),
    );
  }
}
