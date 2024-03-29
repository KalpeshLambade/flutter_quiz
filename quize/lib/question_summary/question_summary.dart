import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quize/question_summary/question_item.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({required this.summaryData, super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return QuestionItems(data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
