import 'package:dusty_dust/const/colors.dart';
import 'package:flutter/material.dart';

const regions = [
  '서울',
  '경기',
  '대구',
  '충남',
  '인천',
  '대전',
  '경북',
  '세종',
  '광주',
  '전북',
  '강원',
  '울산',
  '전남',
  '부산',
  '제주',
  '충북',
  '경남',
];

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: darkColor,
      child: ListView(
        children: [
          DrawerHeader(
            child: Text(
              '지역 선택',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            margin: EdgeInsets.zero,
          ),
          // ... = cascade operator(카스케이드 연산자): 각 요소에 대해 연속적인 작업을 수행
          ...regions
              .map(
                (e) => ListTile(
                  tileColor: Colors.white,
                  selectedTileColor: lightColor, // 선택된 타일의 배경색을 lightColor로 설정
                  selectedColor: Colors.black, // 선택된 상태의 텍스트 색상을 검정색으로 설정
                  selected: e == '서울',
                  onTap: () {},
                  title: Text(
                    e,
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
