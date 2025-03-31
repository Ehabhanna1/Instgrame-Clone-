import 'package:flutter/material.dart';
import 'package:instgram_clone/core/themes/styles.dart';
import 'package:instgram_clone/core/utils/spacing.dart';
import 'package:instgram_clone/features/profile/widgets/post_tage.dart';
import 'package:instgram_clone/features/profile/widgets/edite_and_share_button.dart';
import 'package:instgram_clone/features/profile/widgets/profile_top_section.dart';
import 'package:instgram_clone/features/profile/widgets/profishnal_dashboard.dart';
import 'package:instgram_clone/features/profile/widgets/user_profile_story.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Joo King',style: myTextStyle20(fontWeight: FontWeight.bold,fontColor: Colors.black),),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.alternate_email,size: 30,color: Colors.black,),),
            horizontalSpace(4),
            IconButton(onPressed: (){}, icon: const Icon(Icons.add_circle_outline_rounded,size: 30,color: Colors.black,),),
            horizontalSpace(4),
            IconButton(onPressed: (){}, icon: const Icon(Icons.menu,size: 30,color: Colors.black,),),
            horizontalSpace(10),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
            
                 ProfileTopSection(),
                
                
                  Padding(
                    padding: const EdgeInsets.only(left: 35,top: 10),
                    child: Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text("Joo King",style: myTextStyle18(),),
                    
                    ),
                  ),
                
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "👑 Confidently walking through life like I own the runway. I believe in good vibes, strong coffee",
                        style: myTextStyle15(fontWeight: FontWeight.w400),
                      ),
                    ),
                
                     /// Professional Dashboard
                    ProfishnalDashboard(),
                
                
                     /// Edit and share button
                   EditeAndShareButton(),
                
                
                     /// Hight light Story Show
                    /// here we call story Show Card
                    UserProfileStory(),
          
                    /// here we show three tab just like instagram
                  /// post , reals , and pin
                  const TabBar(tabs: [
                    Tab(
                      icon: Icon(Icons.grid_on_rounded),
                    ),
                    Tab(
                      icon: Icon(Icons.ondemand_video_rounded),
                    ),
                    Tab(
                      icon: Icon(Icons.person_pin_outlined),
                    ),
                  ]),
                
          
                /// here we set height
                /// 
               PostTage(),
                  
                    
                
            ],
          ),
        ),
      ),
    );
  }
}