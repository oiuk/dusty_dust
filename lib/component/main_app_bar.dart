import 'package:dusty_dust/const/colors.dart';
import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({Key? key});

  @override
  Widget build(BuildContext context) {
    final ts = TextStyle(
      color: Colors.white,
      fontSize: 30,
    );

    return SliverAppBar(
      backgroundColor: primaryColor,
      expandedHeight: 500, // SliverAppBar 확장 높이를 500으로 설정
      // 확장된 상태에서 보이는 부분을 지정
      flexibleSpace: FlexibleSpaceBar(
        background: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: kToolbarHeight), // 상단 패딩 고려하여 마진 설정
            child: Column(
              children: [
                Text(
                  '서울',
                  style: ts.copyWith(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  DateTime.now().toString(),
                  style: ts.copyWith(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 20),
                Image.asset(
                  'asset/img/mediocre.png',
                  width: MediaQuery.of(context).size.width /
                      2, // 화면 너비의 반으로 이미지 크기 설정
                ),
                const SizedBox(height: 20),
                Text(
                  '보통',
                  style: ts.copyWith(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '나쁘지 않네요',
                  style: ts.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
