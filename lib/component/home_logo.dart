import 'package:flutter/material.dart';

class HomeLogo extends StatelessWidget {
  const HomeLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.blue[300]!,
              blurRadius: 12.0,
              spreadRadius: 2.0,
            )
          ]),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.videocam,
              color: Colors.white,
              size: 40.0,
            ),
            SizedBox(width: 12.0),
            Text(
              'STREAMING',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                letterSpacing: 4.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
