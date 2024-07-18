import 'package:flutter/material.dart';
import 'package:voice_message_package/src/widgets/single_noise.dart';

/// A widget that represents a collection of noises.
///
/// This widget is used to display a collection of noises in the UI.
/// It is typically used in the context of a voice message player.
class Noises extends StatelessWidget {
  const Noises({
    super.key,
    required this.rList,
    required this.activeSliderColor,
    required this.noiseWidth,
  });

  /// A list of noises value.
  final List<double> rList;

  /// The color of the active slider.
  final Color activeSliderColor;

  final double noiseWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: rList
          .map(
            (e) => SingleNoise(
              activeSliderColor: activeSliderColor,
              height: e, width: noiseWidth,

            ),
          )
          .toList(),
    );
  }
}
