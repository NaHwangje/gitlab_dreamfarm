import 'package:dream_farm_mqtt/screen/cam_screen.dart';
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
          onPressed: () {
            Navigator.of(context).push( //스트리밍 페이지로 이동
              MaterialPageRoute(
                builder: (_) => CamScreen(),
              ),
            );
          },
          child: const Text('입장하기'),
        )
      ],
    );
  }
}
