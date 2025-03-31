import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instgram_clone/core/themes/styles.dart';
import 'package:instgram_clone/core/utils/spacing.dart';

class UserPostCard extends StatelessWidget {
  const UserPostCard({super.key, required this.imageProfile, required this.postImage, required this.numLikes, required this.userName, required this.subTitle});

  final String imageProfile;
  final String postImage;
   final  String numLikes;
 final String userName;
 final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(userName,style: myTextStyle15(fontWeight: FontWeight.bold),),
          subtitle: Text(subTitle,style: myTextStyle12(),),
          leading: ClipOval(
            child: Image.asset(imageProfile,height: 50.h,width: 50.w,),
            
          ),
          trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert),),
        ),
        AspectRatio(
          aspectRatio: 2.sp/1.8.sp,
    
        child: Image.asset(postImage,fit: BoxFit.fill,alignment: Alignment.center,),
        
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border_outlined,size: 30,)),
            horizontalSpace(8),
            IconButton(onPressed: (){}, icon: Image.asset("assets/icons/chat (2).png",height: 30,width: 30,)),
            horizontalSpace(8),
            IconButton(onPressed: (){}, icon: Image.asset("assets/icons/send(1).png",height: 30,width: 30,)),

              ],
            ),

            IconButton(onPressed: (){}, icon: Icon(Icons.bookmark_border_outlined,size: 30,)),
            
          ],
        ),
        Row(
          children: [
            Text(numLikes,style: myTextStyle15(fontWeight: FontWeight.bold),),
            horizontalSpace(5),
            Text("Likes",style: myTextStyle12(fontWeight: FontWeight.bold),),
            
          ],
        ),
       const Divider(thickness: 1.5,height: 20,),
        
      ],
    );
  }
}