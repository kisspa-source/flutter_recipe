import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_recipe/components/recipe_list_item.dart';
import 'package:flutter_recipe/components/recipe_menu.dart';
import 'package:flutter_recipe/components/recipe_title.dart';

/**
 * 하단의 리스트 페이지
 */
class RecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // 배경색 지정
      appBar: _buildRecipeAppBar(), // 비어있는 AppBar 연결
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20), // 수평으로 여백 주기
        child: ListView(
          // Column 위에서 아래로 내려가는 구조
          children: [
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem("coffee", "커피 만들기"),
            RecipeListItem("burger", "버거 만들기"),
            RecipeListItem("pizza", "피자 만들기"),
          ],
        ),
      ),
    );
  }
}

/**
 * 상단의 앱 바
 */
AppBar _buildRecipeAppBar() {
  return AppBar(
    backgroundColor: Colors.white, //배경색
    elevation: 1.0, // 그림자 효과 조정
    actions: [
      Icon(
        CupertinoIcons.search, // 쿠퍼티노 아이콘 사용
        color: Colors.black,
      ),
      SizedBox(width: 15,),
      Icon(
        CupertinoIcons.heart,
        color: Colors.redAccent,
      ),
      SizedBox(width: 15,)
    ],
  );
}
