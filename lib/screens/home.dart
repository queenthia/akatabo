import 'package:akatabo/screens/book4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../colors.dart';

// ignore: must_be_immutable
class GetStarted extends StatelessWidget {
  GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: akataboColor,
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // image
          const Placeholder(),
          const SizedBox(
            width: 32,
          ),
          const Icon(
            Icons.account_balance_outlined,
            size: 50,
          ),
          const SizedBox(
            height: 32,
          ),
          const Text(
            "Please Enter Your Level of Education",
            textAlign: TextAlign.start,
            style: TextStyle(
              color: akataboWhite,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          FormBuilderDropdown<String>(
            name: 'level',
            decoration: const InputDecoration(
              fillColor: Colors.white,
              labelText: 'Primary school level',
              border: OutlineInputBorder(),
            ),
            items: primaryLevels
                .map((level) => DropdownMenuItem(
                      alignment: AlignmentDirectional.center,
                      value: level,
                      child: Text(level),
                    ))
                .toList(),
          ),
          const SizedBox(
            height: 160,
          ),
          const Text(
            "Get Started",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: akataboWhite,
              fontSize: 36,
            ),
          ),
          const SizedBox(
            width: 32,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Book4(),
            ),
          );
        },
        backgroundColor: akataboPink,
        child: const Icon(Icons.navigate_next),
      ),
    );
  }

  List<String> primaryLevels = ['P1', 'P2', 'P3', 'P4', 'P5', 'P6', 'P7'];
}
