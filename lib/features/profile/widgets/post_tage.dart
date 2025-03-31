import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PostTage extends StatefulWidget {
  const PostTage({super.key});

  @override
  State<PostTage> createState() => _PostTageState();
}

class _PostTageState extends State<PostTage> {



  List<String> posts = [
    "assets/images/anxious.png",
    "assets/images/audiomack.png",
    "assets/images/energetic.png",
    "assets/images/happy.png",
    "assets/images/grateful.png",
    "assets/images/romance.png",
    "assets/images/romance.png",
    "assets/images/romance.png",




  ];


   /// tag post list
  List<String> tagPost = [
     "assets/images/anxious.png",
    "assets/images/audiomack.png",
    "assets/images/energetic.png",
    "assets/images/happy.png",
    "assets/images/grateful.png",
    "assets/images/romance.png",
    "assets/images/romance.png",
    "assets/images/romance.png",
    
  ];




  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height  * tagPost.length / 10,
      child: TabBarView(
        children:[ GridView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.all(10),
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: posts.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  mainAxisSpacing: 5,
                                  crossAxisSpacing:6),
                          itemBuilder: (context, index) {
                            return SizedBox(
                                height: 100,
                                width: 100,
                                child: Image.asset(
                                  posts[index],
                                  fit: BoxFit.cover,
                                ));
                          },
                        ),


                        //reels

                         /// reals you can also video display here
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: posts.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisSpacing: 4,
                              crossAxisSpacing: 4),
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 100,
                          width: 100,
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(posts[index]),
                                        fit: BoxFit.cover)),
                              ),
                              Positioned(
                                  right: 0,
                                  top: 10,
                                  child: Image.asset(
                                    "assets/icons/video (1).png",
                                    height: 30,
                                    width: 30,
                                  ))
                            ],
                          ),
                        );
                      },
                    ),


                      /// tag // here we show different image
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: tagPost.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisSpacing: 4,
                              crossAxisSpacing: 4),
                      itemBuilder: (context, index) {
                        return SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                              tagPost[index],
                              fit: BoxFit.cover,
                            ));
                      },
                    ),
      ],
      
      ),
    );
  }
}