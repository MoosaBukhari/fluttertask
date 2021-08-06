import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
class LikeButtonWidget extends StatefulWidget {
  const LikeButtonWidget({Key? key}) : super(key: key);

  @override
  _LikeButtonWidgetState createState() => _LikeButtonWidgetState();
}
class _LikeButtonWidgetState extends State<LikeButtonWidget> {
  bool isLiked = false;
  int Count = 41;
  @override
  Widget build(BuildContext context) {
    final double size = 30;
    return Row(
      children: [
        LikeButton(
      size: size,
      isLiked: isLiked,
      likeCount: Count,
      likeBuilder: (isLiked){
        return Icon(
          isLiked == false ? Icons.star_border : Icons.star,
          color: isLiked?
          Colors.orange :Colors.grey, size: size,);
      },
    countBuilder: (count, isLiked, text){
        final color = isLiked? Colors.orange : Colors.grey;
      return Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: 20,
        ),
      );
  },
    ),],
    );
  }
}
