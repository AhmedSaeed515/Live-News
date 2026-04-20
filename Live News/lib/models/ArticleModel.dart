import 'package:flutter/cupertino.dart';

class Article{
  String title;
  String description;
  String URLImage;
  String content;
  String url;
  Article(
    {
      required this.title,
      required this.description,
      required this.URLImage,
      required this.content,
      required this.url,
    }
  );
}