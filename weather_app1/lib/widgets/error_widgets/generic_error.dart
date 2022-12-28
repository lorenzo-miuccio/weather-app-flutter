import 'package:flutter/material.dart';

class GenericErrorWidget extends StatelessWidget {
  const GenericErrorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Center(
        child: Text(
          'Something went wrong . . .',
          style: TextStyle(
            color: Colors.blueGrey,
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
