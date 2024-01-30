import 'package:dusty_dust/const/colors.dart';
import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  final Widget child;  // 하위 위젯을 포함하는 child 위젯
  const MainCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      color: lightColor,
      child: child,
    );
  }
}
