import 'package:flutter/material.dart';

class NoConnectionWidget extends StatefulWidget {
  const NoConnectionWidget({Key? key}) : super(key: key);

  @override
  State<NoConnectionWidget> createState() => _NoConnectionWidgetState();
}

class _NoConnectionWidgetState extends State<NoConnectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset('assets/images/no_wifi.png'));
  }
}
