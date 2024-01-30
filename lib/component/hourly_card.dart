import 'package:dusty_dust/component/card_title.dart';
import 'package:dusty_dust/component/main_card.dart';
import 'package:flutter/material.dart';

class HourlyCard extends StatelessWidget {
  const HourlyCard({Key? key});

  @override
  Widget build(BuildContext context) {
    return MainCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CardTitle(
            title: '시간별 미세먼지', // 카드 제목을 '시간별 미세먼지'로 설정
          ),
          Column(
            children: List.generate(24, (index) {
              final now = DateTime.now(); // 현재 시간을 저장
              final hour = now.hour; // 현재 시간에서 시간 부분만 추출
              int currentHour = hour - index; // 현재 시간에서 index만큼 시간을 빼서 계산

              // 음수인 경우 24를 더해 정상 범위로 조정
              if (currentHour < 0) {
                currentHour += 24;
              }

              return Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 8.0, vertical: 4), // 패딩 설정
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        '$currentHour시', // 현재 시간에 따라 텍스트 동적으로 생성
                      ),
                    ),
                    Expanded(
                      child: Image.asset(
                        'asset/img/good.png', // 이미지 경로 설정
                        height: 20,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '좋음', // 텍스트 내용 설정
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
