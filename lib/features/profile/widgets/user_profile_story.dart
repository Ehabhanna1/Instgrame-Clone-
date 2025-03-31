
import 'package:flutter/material.dart';
import 'package:instgram_clone/features/home/ui/widgets/story_show_card.dart';

class UserProfileStory extends StatelessWidget {
  const UserProfileStory({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                         StoryShowCard(image: 'assets/images/romance.png', userName: 'Mary_Queen',),
                        StoryShowCard(image: 'assets/images/pexels-achraf210-3383361.jpg', userName: 'Queen_Elizabeth',),
                        StoryShowCard(image: 'assets/images/anxious.png', userName: 'Queen_Elizabeth',),
                        StoryShowCard(image: 'assets/images/pexels-achraf210-3383361.jpg', userName: 'Queen_Elizabeth',),
                        StoryShowCard(image: 'assets/images/pexels-achraf210-3383361.jpg', userName: 'Queen_Elizabeth',),
                      ],
                    ),
                  );
  }
}