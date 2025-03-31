import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instgram_clone/core/themes/styles.dart';

class StoryShowCard extends StatelessWidget {
  const StoryShowCard({super.key, required this.image, required this.userName});

  final String image ;
  final String userName ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
              Container(
                    height: 100.h,
                    width: 100.w,
                     decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover),
              shape: BoxShape.circle,
              border: Border.all(color: Colors.red,width: 3),
              gradient: LinearGradient(
                colors: [
              
                Colors.purple,
                Colors.red,
                Colors.orange,
                Colors.yellow
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
              ),
               
                              ),
                              
                            ),
                            Text(userName,style: myTextStyle12(fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}