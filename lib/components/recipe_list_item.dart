import 'dart:ui';

import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  final String imageName;
  final String title;

  const RecipeListItem(this.imageName, this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 2/1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/$imageName.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),

          SizedBox(height: 5,),
          Text(
            title,
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "자신만의 $title를 시도한적이 있나요? 한번 도전해 보세요. 정말 쉽고 재미있습니다. $title",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          )
        ],
      ),
    );
  }
}

