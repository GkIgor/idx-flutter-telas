import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/widgets/buttons/login_widget_button.dart';

class TinderPage extends StatelessWidget {
  const TinderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 100),
          Center(
            child: SizedBox(
              child: SvgPicture.asset(
                'lib/assets/images/flame_tinder_logo.svg',
                height: 200,
                width: 200,
                // fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Location Changer',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Plugin app for Tinder',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 20),
          LoginWidgetButton(
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
