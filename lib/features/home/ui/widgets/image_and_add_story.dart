import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instgram_clone/core/themes/styles.dart';

class ImageAndAddStory extends StatelessWidget {
  const ImageAndAddStory({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Stack(
                    children: [
                      Container(
                    height: 100.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/grateful.png"),fit: BoxFit.cover),
                      shape: BoxShape.circle,
                       
                    ),
                    
                  ),
        
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: ClipOval(
                      child: Container(
                        height: 28.h,
                        width: 28.w,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white,width: 2)
                          ),
                        child: Icon(Icons.add,color: Colors.white,size: 25,),
                      
                    ))
                  )
                    ],
                  ),

                  Text("Your Story",style: myTextStyle12(fontWeight: FontWeight.bold),)
      ],
    );
  }
}