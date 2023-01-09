import 'package:flutter/material.dart';

class WeatherImageWidget extends StatelessWidget {

  final String iconPath;
  final double imageHeight;

  const WeatherImageWidget({Key? key, required this.iconPath, required this.imageHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: imageHeight,
      child: FadeInImage(
        fadeInDuration: const Duration(milliseconds: 100),
        placeholder: const AssetImage('assets/images/placeholder_image.png'),
        image: NetworkImage(iconPath),
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
