import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instgram_clone/core/themes/styles.dart';
import 'package:instgram_clone/core/utils/spacing.dart';
import 'package:instgram_clone/features/home/ui/widgets/image_and_add_story.dart';
import 'package:instgram_clone/features/home/ui/widgets/story_show_card.dart';
import 'package:instgram_clone/features/home/ui/widgets/user_post_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Instagram',style: myTextStyle25(fontFamily: 'secondary',fontWeight: FontWeight.bold)),
        actions: [
          
          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border_outlined,size: 30,)),
          horizontalSpace(15),
          IconButton(onPressed: (){}, icon: Image.asset("assets/icons/messenger.png",height: 30,width: 30,)),
          horizontalSpace(15),
        
        ],
        
        ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                  
                      ImageAndAddStory(),
                          
                     
                      StoryShowCard(image: 'assets/images/romance.png', userName: 'Mary_Queen',),
                      StoryShowCard(image: 'assets/images/pexels-achraf210-3383361.jpg', userName: 'Queen_Elizabeth',),
                      StoryShowCard(image: 'assets/images/anxious.png', userName: 'Queen_Elizabeth',),
                      StoryShowCard(image: 'assets/images/pexels-achraf210-3383361.jpg', userName: 'Queen_Elizabeth',),
                      StoryShowCard(image: 'assets/images/pexels-achraf210-3383361.jpg', userName: 'Queen_Elizabeth',),
                      
                    ],
                  ),
                ),
              ),

              UserPostCard(imageProfile: 'assets/images/energetic.png',
               postImage: 'assets/images/pexels-aldiq-2919625.jpg',
                numLikes: "1.5k", userName: 'John Doe', subTitle: 'dark side',),
              UserPostCard(imageProfile: 'assets/images/relaxed.png',
               postImage: 'assets/images/pexels-achraf210-3383361.jpg',
                userName: 'Mario_king', numLikes: '5.5k', subTitle: 'relaxed',),
              UserPostCard(imageProfile: 'assets/images/romance.png', postImage: 'assets/images/romance.png', userName: 'Queen_Elizabeth', numLikes: '2.5k', subTitle: 'romance',),

              UserPostCard(imageProfile: "assets/images/happy.png",
               postImage: "assets/images/happy.png",
                numLikes: '5.2k',
                 userName: "Magic",
                  subTitle: "magic music...")
            ],
          ),
        ),
      ),
    );
  }
}