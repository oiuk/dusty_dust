import 'package:flutter/material.dart';

class MainStat extends StatelessWidget {
  // 미세먼지, 초미세먼지 등을 표시하는 문자열
  final String category;
  // 아이콘 위치(경로)를 표시하는 문자열
  final String imgPath;
  // 오염 정도를 표시하는 문자열
  final String level;
  // 오염 수치를 표시하는 문자열
  final String stat;
  // 위젯의 너비를 지정하는 값
  final double width;

  const MainStat({
    Key? key,
    required this.category,
    required this.imgPath,
    required this.level,
    required this.stat,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ts = TextStyle(
      color: Colors.black,
    );

    return SizedBox(
      width: width, // 지정된 너비로 사이즈박스를 설정
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            category, // 카테고리 텍스트 표시
            style: ts,
          ),
          const SizedBox(height: 8),
          Image.asset(
            imgPath, // 이미지 경로를 통해 이미지를 표시
            width: 50,
          ),
          const SizedBox(height: 8),
          Text(
            level, // 오염 정도 텍스트 표시
            style: ts,
          ),
          Text(
            stat, // 오염 수치 텍스트 표시
            style: ts,
          ),
        ],
      ),
    );
  }
}
