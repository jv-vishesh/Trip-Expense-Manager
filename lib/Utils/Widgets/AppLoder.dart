import 'package:flutter/material.dart';

class AppLoder extends StatelessWidget {
  const AppLoder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: double.maxFinite,
        width: double.maxFinite,
        color: Colors.black.withOpacity(0.6),
        child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [CircularProgressIndicator()]));
  }
}
