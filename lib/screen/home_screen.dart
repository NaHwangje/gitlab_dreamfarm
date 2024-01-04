import 'package:dream_farm_mqtt/component/home_entry_button.dart';
import 'package:dream_farm_mqtt/component/home_image.dart';
import 'package:flutter/material.dart';
import 'package:dream_farm_mqtt/component/home_logo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100]!,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Expanded(child: HomeLogo()),
              Expanded(child: HomeImage()),
              Expanded(child: HomeEntryButton()),
            ],
          ),
        ),
      ),
    );
  }
}


