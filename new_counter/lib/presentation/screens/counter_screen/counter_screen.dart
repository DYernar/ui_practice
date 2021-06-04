import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:new_counter/presentation/screens/counter_screen/widgets/animated_circles.dart';
import 'package:new_counter/presentation/screens/counter_screen/widgets/counter_slider.dart';
import 'package:new_counter/presentation/screens/counter_screen/widgets/counter_value.dart';
import 'package:new_counter/presentation/screens/counter_screen/widgets/plasma_background.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PlasmaBackground(),
          Positioned(
            top: 50.0,
            child: Stack(
              alignment: Alignment.center,
              children: [
                AnimatedCircles(),
                CounterValue(),
              ],
            ),
          ),
          Positioned(
            child: CounterSlider(),
            bottom: 50.0,
          ),
        ],
      ),
    );
  }
}
