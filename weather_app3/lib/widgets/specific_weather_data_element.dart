import 'package:flutter/material.dart';

class SpecificWeatherDataElement extends StatelessWidget {
  final IconData icon;
  final String value;

  const SpecificWeatherDataElement({required this.value, required this.icon, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,size: 36,),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: SizedBox(
            width: 100,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                value,
                style: const TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 22,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
