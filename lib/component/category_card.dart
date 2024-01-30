import 'package:dusty_dust/component/card_title.dart';
import 'package:dusty_dust/component/main_card.dart';
import 'package:dusty_dust/component/main_stat.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160, // 카테고리 카드의 높이를 160으로 제한
      child: MainCard(
        // LayoutBuilder = 페이지처럼 넘기기 위해 사용
        child: LayoutBuilder(builder: (context, constraint) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CardTitle(
                title: '종류별 통계', // 카드 제목을 '종류별 통계'로 설정
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal, // 가로 스크롤 리스트뷰로 설정
                  physics: PageScrollPhysics(), // 페이지 형태의 스크롤 물리학 적용
                  children: List.generate(
                    20,
                        (index) => MainStat(
                      width: constraint.maxWidth / 3,
                      category: '미세먼지$index',
                      imgPath: 'asset/img/best.png',
                      level: '최고',
                      stat: '0 ㎍/㎥',
                    ),
                  ),
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
