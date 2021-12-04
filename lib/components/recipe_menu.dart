import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 20),
      child: Row( // 메뉴 아이템들의 방향이 수평 방향이라서 row를 사용
        children: [
          _buildMenuItem(Icons.food_bank, "전체"),
          SizedBox(width: 25,),
          _buildMenuItem(Icons.emoji_food_beverage, "커피"),
          SizedBox(width: 25,),
          _buildMenuItem(Icons.fastfood, "버거"),
          SizedBox(width: 25,),
          _buildMenuItem(Icons.local_pizza, "피자"),
        ],
      ),
    );
  }
}

/**
 * 메뉴 아이콘을 만들기 위한 함수
 */
Widget _buildMenuItem(IconData mIcon, String iconText) {
  return Container( // 데코레이션을 위해 사용
    width: 60,
    height: 80,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      border: Border.all(color: Colors.black12),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(mIcon, color: Colors.redAccent, size: 30,),
        SizedBox(height: 5,),
        Text(
          iconText,
          style: TextStyle(color: Colors.black87),
        )
      ],
    ),
  );
}
