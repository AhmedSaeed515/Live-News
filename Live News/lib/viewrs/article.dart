import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'articlePage.dart';

// ignore: must_be_immutable
class ArticleView extends StatelessWidget {
  String url;
  String imageUrl;
  String title;
  String desc;
  ArticleView(
      {Key? key, required this.imageUrl, required this.desc, required this.title, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: ((context) =>ArticlePage(url: url , title: title,))));
      },
            child: Container(padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10).r,
                  color:  Colors.black12 ,
                ),
        margin: const EdgeInsets.only(bottom: 16.0).r,
          child: Column(
        children: [
         Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10).r
          ),
         child: Image.network(imageUrl),
            
          ),
         
          Text(
            title,
            style: TextStyle(
              fontSize: 20.sp,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            desc,
            style: const TextStyle(
              color: Colors.black87,
            ),
          )
        ],
      )),
    );
  }
}
