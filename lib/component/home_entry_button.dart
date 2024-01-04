import 'package:flutter/material.dart';

class HomeEntryButton extends StatelessWidget {
  const HomeEntryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: const Text('입장하기'),
        )
      ],
    );
  }
}
