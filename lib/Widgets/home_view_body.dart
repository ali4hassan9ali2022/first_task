import 'package:first_task/Utilities/strings.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            Strings.kBranch,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
          ),

        ],
      ),
    );
  }
}
